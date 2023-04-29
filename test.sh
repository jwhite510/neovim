#!/bin/bash

# rm -rf .cirrus.yml .clang-format .clang-tidy .clangd .deps .editorconfig .git-blame-ignore-revs .gitattributes .github .gitignore .luacheckrc .luacov .mailmap .stylua.toml .styluaignore BACKERS.md BSDmakefile CMakeLists.txt CMakePresets.json CONTRIBUTING.md LICENSE.txt MAINTAIN.md Makefile README.md build ci cmake cmake.config cmake.deps cmake.packaging codecov.yml contrib runtime scripts snap src test
# git checkout .

# cmake -DCMAKE_CXX_FLAGS=-pg -DCMAKE_EXE_LINKER_FLAGS=-pg -DCMAKE_SHARED_LINKER_FLAGS=-pg <SOURCE_DIR>

make -j8 CMAKE_BUILD_TYPE=Debug

# valgrind --tool=callgrind ./build/bin/nvim -u NONE -S ./test.vim

gdb\
  -ex "set follow-fork-mode child"\
  -ex "r"\
  -ex "b /home/jonathon/Projects/neovim/src/nvim/drawline.c:1749"\
  -ex "b /home/jonathon/Projects/neovim/src/nvim/diff.c:2690"\
  -ex "b charmatch_nbuffers"\
  --args ./build/bin/nvim -u NONE -S ./test.vim
  # -ex "b /home/jonathon/Projects/neovim/src/nvim/diff.c:2117"\
  # -ex "b /home/jonathon/Projects/neovim/src/nvim/linematch.c:145"\

  # -ex "b count_n_matched_chars"\
  # -ex "b /home/jonathon/Projects/neovim/src/nvim/linematch.c:214"\

# FILE *fp = fopen("testlog.log", "a");
# fprintf(fp, "test 123\n");
# fclose(fp);
