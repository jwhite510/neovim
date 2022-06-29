#ifndef LINEMATCH_H
#define LINEMATCH_H

typedef struct {
  int df_lev_matched;
  int df_lev_mismatched;
} df_lev_score_T;
// struct for running the diff linematch algorithm
typedef struct {
  int *df_decision;  // to keep track of this path traveled
  df_lev_score_T df_lev_score;  // to keep track of the total score of this path
  int df_path_index;  // current index of this path
} diffcomparisonpath_T;


#ifdef INCLUDE_GENERATED_DECLARATIONS
# include "linematch.h.generated.h"
#endif

#endif // #if !defined(LINEMATCH_H)
