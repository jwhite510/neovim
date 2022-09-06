#ifndef NVIM_DIFF_DEFS_H
#define NVIM_DIFF_DEFS_H

#include "nvim/vim.h"

// Flags obtained from the 'diffopt' option
#define DIFF_FILLER     0x001   // display filler lines
#define DIFF_IBLANK     0x002   // ignore empty lines
#define DIFF_ICASE      0x004   // ignore case
#define DIFF_IWHITE     0x008   // ignore change in white space
#define DIFF_IWHITEALL  0x010   // ignore all white space changes
#define DIFF_IWHITEEOL  0x020   // ignore change in white space at EOL
#define DIFF_HORIZONTAL 0x040   // horizontal splits
#define DIFF_VERTICAL   0x080   // vertical splits
#define DIFF_HIDDEN_OFF 0x100   // diffoff when hidden
#define DIFF_INTERNAL   0x200   // use internal xdiff algorithm
#define DIFF_CLOSE_OFF  0x400   // diffoff when closing window
#define DIFF_FOLLOWWRAP 0x800   // follow the wrap option
#define DIFF_LINEMATCH  0x1000  // match most similar lines within diff
#define ALL_WHITE_DIFF (DIFF_IWHITE | DIFF_IWHITEALL | DIFF_IWHITEEOL)

EXTERN int diff_flags INIT(= DIFF_INTERNAL | DIFF_FILLER | DIFF_CLOSE_OFF);

#endif  // NVIM_DIFF_DEFS_H
