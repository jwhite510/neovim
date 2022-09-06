#ifndef NVIM_LINEMATCH_H
#define NVIM_LINEMATCH_H

// struct for running the diff linematch algorithm
typedef struct {
  int *df_decision;  // to keep track of this path traveled
  int df_lev_score;  // to keep track of the total score of this path
  int df_path_index;  // current index of this path
} diffcomparisonpath_T;

#ifdef INCLUDE_GENERATED_DECLARATIONS
# include "linematch.h.generated.h"
#endif

#endif  // NVIM_LINEMATCH_H
