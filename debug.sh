#!/bin/bash
cd build/bin/
if [ "$1" = "gdb" ]
then
  gdb \
      -ex "b diff.c:2748"\
      --args ./nvim -u NONE -d ../../testdiffb.txt ../../testdiffa.txt
      # --args ./nvim -u NONE -d ../../testdiff3_1.txt ../../testdiff3_2.txt ../../testdiff3_3.txt
      # -ex "b screen.c:2338"\
      # -ex "b diff.c:free_comparison_mem"\
      # -ex "b diff.c:try_possible_paths"\
else
  # ./nvim -u NONE -d ../../testdiff3_1.txt ../../testdiff3_2.txt ../../testdiff3_3.txt
  ./nvim -u NONE -d ../../testdiffb.txt ../../testdiffa.txt

fi
# gdb \
#     -ex "b diff.c:2338"\
#     -ex "r"\
#     --args ./nvim -d ../../testdiffb.txt ../../testdiffa.txt
#     # -ex "b diff.c:try_possible_paths"\

# ./nvim -d ~/Projects/diffproblems/1.txt ~/Projects/diffproblems/2.txt

# ./nvim -d ../../testdiffb.txt ../../testdiffa.txt
