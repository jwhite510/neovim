#!/bin/bash
cd build/bin/
if [ "$1" = "gdb" ]
then
  gdb \
      -ex "b screen.c:2338"\
      -ex "r"\
      --args ./nvim -d ../../testdiffb.txt ../../testdiffa.txt
      # -ex "b diff.c:try_possible_paths"\
else
  ./nvim -d ../../testdiffb.txt ../../testdiffa.txt

fi
# gdb \
#     -ex "b diff.c:2338"\
#     -ex "r"\
#     --args ./nvim -d ../../testdiffb.txt ../../testdiffa.txt
#     # -ex "b diff.c:try_possible_paths"\

# ./nvim -d ~/Projects/diffproblems/1.txt ~/Projects/diffproblems/2.txt

# ./nvim -d ../../testdiffb.txt ../../testdiffa.txt
