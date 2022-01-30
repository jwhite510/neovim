// linematch algorithm functions for alignment of diffs
// by Jonathon White (2022) (jonathonwhite@protonmail.com)

#include "nvim/diff_linematch.h"

#ifdef INCLUDE_GENERATED_DECLARATIONS
# include "diff_linematch.c.generated.h"
#endif

/// count the matching characters between a variable number of strings "stringps"
/// mark the strings that have already been compared to extract them later
/// without re-running the character match counting.
/// @param stringps
/// @param fromValues
/// @param n
/// @param comparison_mem
long count_n_matched_chars(const char_u **stringps, const int *fromValues,
                           const int n, int ***comparison_mem)
{
  int matched_chars = 0, pointerindex = 0, matched = 0;
  for (int i = 0; i < n; i++) {
    for (int j = i + 1; j < n; j++) {
      if ( stringps[i] != NULL && stringps[j] != NULL ) {
        int i1 = fromValues[i];  // index of where to get the buffer
        int j1 = fromValues[j];
        if (comparison_mem[pointerindex][i1][j1] == -1) {
          comparison_mem[pointerindex][i1][j1] =
            count_matched_chars(stringps[i], stringps[j]);
        }
        matched++;
        matched_chars += comparison_mem[pointerindex][i1][j1];
      }
      pointerindex++;
    }
  }

  // prioritize a match of 3 (or more lines) equally to a match of 2 lines
  if (matched >= 2) {
    matched_chars *= 2;
    matched_chars /= matched;
  }

  return matched_chars;
}

/// return the number of matching characters between two strings
///
/// @param s1
/// @param s2
long count_matched_chars(const char_u *s1, const char_u *s2)
{
  long l1 = (long)STRLEN(s1), l2 = (long)STRLEN(s2);
  if ( diff_flags & DIFF_IWHITE || diff_flags & DIFF_IWHITEALL
      || diff_flags & DIFF_ICASE ) {
    bool iwhite = (diff_flags & DIFF_IWHITEALL || diff_flags & DIFF_IWHITE);
    // the newly processed strings that will be compared
    char_u *s1_proc = xmalloc((STRLEN(s1) + 1) * sizeof(char_u));
    char_u *s2_proc = xmalloc((STRLEN(s2) + 1) * sizeof(char_u));
    // delete the white space characters,
    // and/or replace all upper case with lower
    char_u *strsproc[2] = { s1_proc, s2_proc };
    const char_u *strsorig[2] = { s1, s2 };
    long slen[2] = { l1, l2 };
    for (int k = 0; k < 2; k++) {
      int d = 0, i = 0;
      while (d+i < slen[k]) {
        if ((iwhite)?(strsorig[k][i+d] != ' ' && strsorig[k][i+d] != '\t'):1) {
          strsproc[k][i] = (diff_flags & DIFF_ICASE)?
           (tolower(strsorig[k][i+d])):(strsorig[k][i+d]);
          i++;
        } else { d++; }
      }
      strsproc[k][i] = '\0';
    }
    long matching = matching_characters(s1_proc, s2_proc);
    xfree(s1_proc), xfree(s2_proc);
    return matching;
  }
  // compare strings without changing the white space / case
  return matching_characters(s1, s2);
}

/// update the path of a point in the diff linematch algorithm
/// @param  diffcomparisonpath_flat
/// @param score
/// @param to
/// @param from
/// @param choice
void update_path_flat(diffcomparisonpath_flat_T *diffcomparisonpath_flat,
                      int score, int to, int from, const int choice)
{
  for (int k = 0; k < diffcomparisonpath_flat[from].df_path_index; k++) {
    diffcomparisonpath_flat[to].df_decision[k] = diffcomparisonpath_flat[from].df_decision[k];
  }
  diffcomparisonpath_flat[to].df_path_index = diffcomparisonpath_flat[from].df_path_index;

  diffcomparisonpath_flat[to].df_lev_score = score;
  diffcomparisonpath_flat[to].df_decision[diffcomparisonpath_flat[to].df_path_index] = choice;
  diffcomparisonpath_flat[to].df_path_index++;
}

/// return matching characters between "s1" and "s2"
/// between string "s1" and "s2".
/// Consider the case of two strings 'AAACCC' and 'CCCAAA', the
/// return value from this function will be 3, either to match
/// the 3 C's, or the 3 A's.
///
/// @param s1
/// @param s2
long matching_characters(const char_u *s1, const char_u *s2)
{
  long s1len = (long)STRLEN(s1), s2len = (long)STRLEN(s2);
  long *matrix[2];
  matrix[0] = xmalloc(sizeof(long) * (s2len+1));
  matrix[1] = xmalloc(sizeof(long) * (s2len+1));
  bool icur = 1;  // save space by storing only two rows for i axis
  for (long i = 0; i <= s1len; i++) {
    icur = !icur;
    for (long j = 0; j <= s2len; j++) {
      if (i == 0) {
        matrix[icur][j] = 0;
      } else if (j == 0) {
        matrix[icur][j] = 0;
      } else {
        matrix[icur][j] = 0;
        // skip char in s1
        if (matrix[!icur][j] > matrix[icur][j]) {
          matrix[icur][j] = matrix[!icur][j];
        }
        // skip char in s2
        if (matrix[icur][j-1] > matrix[icur][j]) {
          matrix[icur][j] = matrix[icur][j-1];
        }
        // compare char in s1 and s2
        if ( (s1[i-1] == s2[j-1])
            && (matrix[!icur][j-1] + 1) > matrix[icur][j] ) {
          matrix[icur][j] = matrix[!icur][j-1] + 1;
        }
      }
    }
  }
  long rvalue = matrix[icur][s2len];
  xfree(matrix[0]), xfree(matrix[1]);
  return rvalue;
}

/// unwrap indexes to access n dimmensional tensor
/// @param values
/// @param diff_length
/// @param nDiffs
int unwrap_indexes(const int *values, const int *diff_length, const int nDiffs)
{
  int num_unwrap_scalar = 1;
  int path_index = 0;
  for (int k = 0; k < nDiffs; k++) {
    num_unwrap_scalar *= (diff_length[k] + 1);
  }
  for (int k = 0; k < nDiffs; k++) {
    num_unwrap_scalar = num_unwrap_scalar / (diff_length[k] + 1);

    if (k == 0) {
      // space optimization
      path_index += num_unwrap_scalar * (values[k] % 2);
    } else {
      path_index += num_unwrap_scalar * values[k];
    }
  }
  return path_index;
}

/// try all the different ways to compare these lines and use the one that
/// results in the most matching characters
/// @param df_iterators
/// @param paths
/// @param nPaths
/// @param pathIndex
/// @param choice
/// @param diffcomparisonpath_flat
/// @param comparison_mem
/// @param diff_length
/// @param nDiffs
/// @param diff_block
void try_possible_paths(const int *df_iterators, const int *paths,
                        const int nPaths, const int pathIndex, int *choice,
                        diffcomparisonpath_flat_T *diffcomparisonpath_flat,
                        int ***comparison_mem, const int *diff_length,
                        const int nDiffs, const char **diff_block)
{
  if (pathIndex == nPaths) {
    if ((*choice) > 0) {
      int *fromValues = xmalloc(sizeof(int) * nDiffs);
      int *toValues = xmalloc(sizeof(int) * nDiffs);
      char **current_lines = xmalloc(sizeof(char *) * nDiffs);
      const char_u **stringps = xmalloc(sizeof(char_u *) * nDiffs);
      for ( int k = 0; k < nDiffs; k++ ) {
        fromValues[k] = df_iterators[k];
        toValues[k] = df_iterators[k];
        // get the index at all of the places
        if ( (*choice) & (1 << k) ) {
          fromValues[k]--;
          const char *p = diff_block[k];
          for (int j = 0; j < df_iterators[k] - 1; j++) {
            // advance the pointer until it hits a newline
            while (*p != '\n') {
              p++;
            }
            p++;
          }
          // copy the line
          int line_length = 0;
          while (p[line_length] != '\n') {
            line_length++;
          }
          current_lines[k] = xmalloc((line_length + 1) * sizeof(char));
          for (int l = 0; l < line_length; l++) {
            current_lines[k][l] = p[l];
          }
          current_lines[k][line_length] = '\0';
          stringps[k] = (char_u *)current_lines[k];  // cast to char_u
        } else {
          current_lines[k] = NULL;
          stringps[k] = NULL;
        }
      }
      int unwrapped_index_from = unwrap_indexes(fromValues, diff_length, nDiffs);
      int unwrapped_index_to = unwrap_indexes(toValues, diff_length, nDiffs);
      long matched_chars = count_n_matched_chars(
          stringps, fromValues, nDiffs, comparison_mem);
      int score = diffcomparisonpath_flat[unwrapped_index_from].df_lev_score +
        matched_chars;
      if (score > diffcomparisonpath_flat[unwrapped_index_to].df_lev_score) {
        update_path_flat(
            diffcomparisonpath_flat,
            score,
            unwrapped_index_to,
            unwrapped_index_from,
            *choice);
      }
      for (int i = 0; i < nDiffs; i++) {
        xfree(current_lines[i]);
      }
      xfree(current_lines);
      xfree(fromValues);
      xfree(toValues);
      xfree(stringps);

    } else {
      // initialize the 0, 0, 0 ... choice
      int i = 0;
      while (i < nDiffs && df_iterators[i] == 0) {
        i++;
        if (i == nDiffs) {
          diffcomparisonpath_flat[0].df_lev_score = 0;
          diffcomparisonpath_flat[0].df_path_index = 0;
        }
      }
    }
    return;
  }
  int bit_place = paths[pathIndex];
  *(choice) |= (1 << bit_place);  // set it to 1
  try_possible_paths(df_iterators, paths, nPaths, pathIndex + 1, choice,
                     diffcomparisonpath_flat, comparison_mem, diff_length, nDiffs, diff_block);
  *(choice) &= ~(1 << bit_place);  // set it to 0
  try_possible_paths(df_iterators, paths, nPaths, pathIndex + 1, choice,
                     diffcomparisonpath_flat, comparison_mem, diff_length, nDiffs, diff_block);
}

/// allocate the memory for comparisons run with the diff linematch algorithm.
/// this memory is used to prevent counting the matching characters on the same
/// line twice
/// @param diff_length
/// @param nDiffs
int ***allocate_comparison_mem(const int *diff_length, const int nDiffs)
{
  int pointercount = 0;
  for (int i = 0; i < nDiffs; i++) {
    for (int j = i + 1; j < nDiffs; j++) {
      pointercount++;
    }
  }
  int ***comparison_mem = xmalloc(sizeof(int **) * pointercount);
  int cpointer = 0;
  for (int i = 0; i < nDiffs; i++) {
    for (int j = i + 1; j < nDiffs; j++) {
      comparison_mem[cpointer] = xmalloc(sizeof(int *) * diff_length[i]);
      for (int k = 0; k < diff_length[i]; k++) {
        comparison_mem[cpointer][k] = xmalloc(sizeof(int) * diff_length[j]);
        // initialize to -1
        for (int l = 0; l < diff_length[j]; l++) {
          comparison_mem[cpointer][k][l] = -1;
        }
      }
      cpointer++;
    }
  }
  return comparison_mem;
}

/// extract the results of the linematch algorithm and write them to
/// "df_comparisonlines" using df_arr_col_size to determine which buffer the
/// diffs are respective to. "outmap" is used to swap the indexes of the diff
/// buffers to match the required format of the output.
/// @param best_path_index
/// @param best_path_decisions
/// @param nDiffs
/// @param df_comparisonlines
/// @param df_arr_col_size
/// @param outmap
void diff_allign_extraction(const int best_path_index, const int *best_path_decisions, int nDiffs,
                            df_linecompare_T **df_comparisonlines, int *df_arr_col_size,
                            const int *outmap)
{
  int *pointers = xmalloc(sizeof(int) * nDiffs);
  for (int i = 0; i < nDiffs; i++) {
    pointers[i] = 0;
  }

  // initialize compare lines
  for (int bit_place = 0; bit_place < nDiffs; bit_place++) {
    (*df_comparisonlines)[
        (*df_arr_col_size) * outmap[bit_place] + pointers[bit_place] ].df_newline = false;
    (*df_comparisonlines)[
        (*df_arr_col_size) * outmap[bit_place] + pointers[bit_place] ].df_filler = 0;
    for (int _bit_place = 0; _bit_place < nDiffs; _bit_place++) {
      if (_bit_place != bit_place) {
        (*df_comparisonlines)[
            (*df_arr_col_size) * outmap[bit_place] + pointers[bit_place]
        ].df_compare[ outmap[_bit_place] ] = -1;
      }
    }
  }
  for (int p = 0; p < best_path_index; p++) {
    // perform the extraction

    // for each thing that gets compared
    for (int bit_place = 0; bit_place < nDiffs; bit_place++) {
      if ( best_path_decisions[p] & (1 << bit_place) ) {
        bool newline = true;
        for (int _bit_place = 0; _bit_place < nDiffs; _bit_place++) {
          if (_bit_place != bit_place) {
            if ( best_path_decisions[p] & (1 << _bit_place) ) {
              newline = false;
              (*df_comparisonlines)[
                  (*df_arr_col_size) * outmap[bit_place] + pointers[bit_place]
              ].df_compare[outmap[_bit_place]] = pointers[_bit_place];
            }
          }
        }
        if ( newline ) {
          (*df_comparisonlines)[
              (*df_arr_col_size) * outmap[bit_place] + pointers[bit_place]
          ].df_newline = true;
        }

      } else {
        (*df_comparisonlines)[
            (*df_arr_col_size) * outmap[bit_place] + pointers[bit_place]
        ].df_filler++;
      }
    }
    for (int bit_place = 0; bit_place < nDiffs; bit_place++) {
      if (best_path_decisions[p] & (1 << bit_place)) {
        pointers[bit_place]++;
      }
    }
    for (int bit_place = 0; bit_place < nDiffs; bit_place++) {
      if (best_path_decisions[p] & (1 << bit_place)) {
        (*df_comparisonlines)[
            (*df_arr_col_size) * outmap[bit_place] + pointers[bit_place] ].df_newline = false;
        (*df_comparisonlines)[
            (*df_arr_col_size) * outmap[bit_place] + pointers[bit_place] ].df_filler = 0;
        for (int _bit_place = 0; _bit_place < nDiffs; _bit_place++) {
          if (_bit_place != bit_place) {
            (*df_comparisonlines)[
                (*df_arr_col_size) * outmap[bit_place] + pointers[bit_place]
            ].df_compare[ outmap[_bit_place] ] = -1;
          }
        }
      }
    }
  }
  xfree(pointers);
}

/// free the memory for comparisons run with the diff linematch algorithm.
/// this memory is used to prevent counting the matching characters on the same
/// line twice
/// @param comparison_mem
/// @param diff_length
/// @param nDiffs
void free_comparison_mem(int ***comparison_mem, const int *diff_length, const int nDiffs)
{
  // free comparison memory
  int cpointer = 0;
  for (int i = 0; i < nDiffs; i++) {
    for (int j = i + 1; j < nDiffs; j++) {
      for (int k = 0; k < diff_length[i]; k++) {
        xfree(comparison_mem[cpointer][k]);
      }
      xfree(comparison_mem[cpointer]);
      cpointer++;
    }
  }
  xfree(comparison_mem);
}

/// populate the values of the linematch algorithm tensor, and find the best
/// decision for how to compare the relevant lines from each of the buffers at
/// each point in the tensor
/// @param df_iterators
/// @param ch_dim
/// @param diffcomparisonpath_flat
/// @param comparison_mem
/// @param diff_length
/// @param nDiffs
/// @param diff_block
void populate_tensor(int *df_iterators, const int ch_dim,
                     diffcomparisonpath_flat_T *diffcomparisonpath_flat, int ***comparison_mem,
                     const int *diff_length, const int nDiffs, const char **diff_block)
{
  if (ch_dim == nDiffs) {
    int nPaths = 0;
    int *paths = xmalloc(sizeof(int) * nDiffs);

    for (int j = 0; j < nDiffs; j++) {
      if (df_iterators[j] > 0) {
        paths[nPaths] = j;
        nPaths++;
      }
    }
    int choice = 0;
    int unwrapper_index_to = unwrap_indexes(df_iterators, diff_length, nDiffs);
    diffcomparisonpath_flat[unwrapper_index_to].df_lev_score = -1;
    try_possible_paths(df_iterators, paths, nPaths, 0, &choice, diffcomparisonpath_flat,
                       comparison_mem, diff_length, nDiffs, diff_block);

    xfree(paths);
    return;
  }
  for (int i = 0; i <= diff_length[ch_dim]; i++) {
    df_iterators[ch_dim] = i;
    populate_tensor(df_iterators, ch_dim + 1, diffcomparisonpath_flat,
                    comparison_mem, diff_length, nDiffs, diff_block);
  }
}

/// algorithm to find an optimal alignment of lines of a diff block with 2 or
/// more files. The algorithm is generalized to work for any number of files
/// which corresponds to another dimmension added to the tensor used in the
/// algorithm
///
/// for explanation, a summary of the algorithm in 3 dimmensions (3 files
///     compared) follows
///
/// The 3d case (for 3 buffers) of the algorithm implemented when diffopt
/// 'linematch' is enabled. The algorithm constructs a 3d tensor to
/// compare a diff between 3 buffers. The dimmensions of the tensor are
/// the length of the diff in each buffer plus 1 A path is constructed by
/// moving from one edge of the cube/3d tensor to the opposite edge.
/// Motions from one cell of the cube to the next represent decisions. In
/// a 3d cube, there are a total of 7 decisions that can be made,
/// represented by the enum df_path3_choice which is defined in
/// buffer_defs.h a comparison of buffer 0 and 1 represents a motion
/// toward the opposite edge of the cube with components along the 0 and
/// 1 axes.  a comparison of buffer 0, 1, and 2 represents a motion
/// toward the opposite edge of the cube with components along the 0, 1,
/// and 2 axes. A skip of buffer 0 represents a motion along only the 0
/// axis. For each action, a point value is awarded, and the path is
/// saved for reference later, if it is found to have been the optimal
/// path. The optimal path has the highest score.  The score is
/// calculated as the summation of the total characters matching between
/// all of the lines which were compared. The structure of the algorithm
/// is that of a dynamic programming problem.  We can calculate a point
/// i,j,k in the cube as a function of i-1, j-1, and k-1. To find the
/// score and path at point i,j,k, we must determine which path we want
/// to use, this is done by looking at the possibilities and choosing
/// the one which results in the local highest score.  The total highest
/// scored path is, then in the end represented by the cell in the
/// opposite corner from the start location.  The entire algorithm
/// consits of populating the 3d cube with the optimal paths from which
/// it may have came.
///
/// Optimizations:
/// As the function to calculate the cell of a tensor at point i,j,k is a
/// function of the cells at i-1, j-1, k-1, the whole tensor doesn't need
/// to be stored in memory at once. In the case of the 3d cube, only two
/// slices (along k and j axis) are stored in memory. For the 2d matrix
/// (for 2 files), only two rows are stored at a time. The next/previous
/// slice (or row) is always calculated from the other, and they alternate
/// at each iteration.
/// In the 3d case, 3 arrays are populated to memorize the score (matched
/// characters) of the 3 buffers, so a redundant calculation of the
/// scores does not occur
/// @param diff_block
/// @param diff_length
/// @param nDiffs
/// @param df_comparisonlines
/// @param df_arr_col_size
/// @param outmap
void linematch_nbuffers(const char **diff_block, const int *diff_length,
                        const int nDiffs, df_linecompare_T **df_comparisonlines,
                        int *df_arr_col_size, const int *outmap)
{
  int memsize = 1, memsize_decisions = 0;
  for (int i = 0; i < nDiffs; i++) {
    memsize *= (i == 0 ? 2 : (diff_length[i] + 1));
    memsize_decisions += diff_length[i];
  }

  // create the flattened path matrix
  diffcomparisonpath_flat_T *diffcomparisonpath_flat = xmalloc(sizeof(diffcomparisonpath_flat_T) *
                                                               memsize);
  // allocate memory here
  for (int i = 0; i < memsize; i++) {
    diffcomparisonpath_flat[i].df_decision = xmalloc(
        (memsize_decisions) * sizeof(int));
  }

  // memory for avoiding repetitive calculations of score
  int *df_iterators;
  df_iterators = xmalloc(sizeof(int) * nDiffs);

  int ***comparison_mem = allocate_comparison_mem(diff_length, nDiffs);

  populate_tensor(df_iterators, 0, diffcomparisonpath_flat, comparison_mem,
                  diff_length, nDiffs, diff_block);

  int maxlines = 0;
  for (int i = 0; i < nDiffs; i++) {
    if (diff_length[i] > maxlines) {
      maxlines = diff_length[i];
    }
  }
  *df_arr_col_size = maxlines + 1;
  *df_comparisonlines =
    xmalloc(DB_COUNT *(*df_arr_col_size) * sizeof(df_linecompare_T));

  // initialize lines
  int *values_final = xmalloc(sizeof(int) * nDiffs);
  for (int i = 0; i < nDiffs; i++) {
    values_final[i] = diff_length[i];
  }
  const int u = unwrap_indexes(values_final, diff_length, nDiffs);
  const int best_path_index = diffcomparisonpath_flat[u].df_path_index;
  const int *best_path_decisions = diffcomparisonpath_flat[u].df_decision;


  diff_allign_extraction(best_path_index, best_path_decisions, nDiffs,
                         df_comparisonlines, df_arr_col_size, outmap);
  free_comparison_mem(comparison_mem, diff_length, nDiffs);

  xfree(values_final);
  xfree(df_iterators);
  for (int i = 0; i < memsize; i++) {
    xfree(diffcomparisonpath_flat[i].df_decision);
  }
  xfree(diffcomparisonpath_flat);
}


