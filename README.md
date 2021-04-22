## linematch diff mode: Improved Diff Mode Fork for neovim

This fork was created to improve the diff mode of neovim to show more useful
information when comparing lines between files in diff view. Line comparisons
are made in a more useful way to show which lines are actually being added,
changed, and deleted.

## Before:
<img src="images/diff_before_3.png" width="700" height="400">  

## After:
<img src="images/diff_after_3.png" width="700" height="400">  

## In action:
<img src="images/example.gif" width="700" height="700">  

## How to use:
enable this enhanced diff mode by using :set diffopt+=linematch. The line match
diff opt is disabled automatically when diffing more than two files at once.

## Why is this not a plugin?

## How it works:
An algorithm is implemented to attempt to compare the most similar lines in each
buffer, rather than only the side by side lines, as is the default diff mode
behaviour. A two dimmensional array is populated for each diff block. The array
is used to store the respective line numbers and show which line number in the
other buffer they should be compared to. As the line match diff mode currently
only works for two buffers, the array is populated twice, once to compare buffer
1 to buffer 2, and once to compare buffer 2 to buffer 1.

<img src="images/exampletable.png" width="700" height="700">  

Buffer 1 (left)
This line | Most similar line in other buffer
------------- | -------------
app = QtWidgets.QApplication(sys.argv) |  # app = QtWidgets.QApplication(sys.argv)

MainWindow = QtWidgets.QMainWindow() | # MainWindow = QtWidgets.QMainWindow()

ui = Ui_MainWindow() | # ui = Ui_MainWindow()

Buffer 2 (right)
This line | Most similar line in other buffer
------------- | -------------
comment these things | ui = Ui_MainWindow()

\# app = QtWidgets.QApplication(sys.argv) | NONE

\# MainWindow = QtWidgets.QMainWindow() | NONE

and add a completely different line here | NONE

\# ui = Ui_MainWindow() | NONE

and another new line | NONE



for discussion about this fork, see this
[reddit post:](https://www.reddit.com/r/vim/comments/mkoaj8/an_improved_diff_mode_for_vim/)



[![Neovim](https://raw.githubusercontent.com/neovim/neovim.github.io/master/logos/neovim-logo-300x87.png)](https://neovim.io)

[Documentation](https://neovim.io/doc) |
[Chat](https://gitter.im/neovim/neovim) |
[Twitter](https://twitter.com/Neovim)

[![GitHub CI](https://github.com/neovim/neovim/workflows/CI/badge.svg)](https://github.com/neovim/neovim/actions?query=workflow%3A%22CI%22)
[![Codecov coverage](https://img.shields.io/codecov/c/github/neovim/neovim.svg)](https://codecov.io/gh/neovim/neovim)
[![Coverity Scan analysis](https://scan.coverity.com/projects/2227/badge.svg)](https://scan.coverity.com/projects/2227)
[![Clang analysis](https://neovim.io/doc/reports/clang/badge.svg)](https://neovim.io/doc/reports/clang)
[![PVS-Studio analysis](https://neovim.io/doc/reports/pvs/badge.svg)](https://neovim.io/doc/reports/pvs/PVS-studio.html.d)

[![Packages](https://repology.org/badge/tiny-repos/neovim.svg)](https://repology.org/metapackage/neovim)
[![Debian CI](https://badges.debian.net/badges/debian/testing/neovim/version.svg)](https://buildd.debian.org/neovim)
[![Downloads](https://img.shields.io/github/downloads/neovim/neovim/total.svg?maxAge=2592001)](https://github.com/neovim/neovim/releases/)
[![nvim](https://snapcraft.io//nvim/badge.svg)](https://snapcraft.io/nvim)

Neovim is a project that seeks to aggressively refactor Vim in order to:

- Simplify maintenance and encourage [contributions](CONTRIBUTING.md)
- Split the work between multiple developers
- Enable [advanced UIs] without modifications to the core
- Maximize [extensibility](https://github.com/neovim/neovim/wiki/Plugin-UI-architecture)

See the [Introduction](https://github.com/neovim/neovim/wiki/Introduction) wiki page and [Roadmap]
for more information.

Features
--------

- Modern [GUIs](https://github.com/neovim/neovim/wiki/Related-projects#gui)
- [API access](https://github.com/neovim/neovim/wiki/Related-projects#api-clients)
  from any language including C/C++, C#, Clojure, D, Elixir, Go, Haskell, Java,
  JavaScript/Node.js, Julia, Lisp, Lua, Perl, Python, Racket, Ruby, Rust
- Embedded, scriptable [terminal emulator](https://neovim.io/doc/user/nvim_terminal_emulator.html)
- Asynchronous [job control](https://github.com/neovim/neovim/pull/2247)
- [Shared data (shada)](https://github.com/neovim/neovim/pull/2506) among multiple editor instances
- [XDG base directories](https://github.com/neovim/neovim/pull/3470) support
- Compatible with most Vim plugins, including Ruby and Python plugins

See [`:help nvim-features`][nvim-features] for the full list!

Install from package
--------------------

Pre-built packages for Windows, macOS, and Linux are found on the
[Releases](https://github.com/neovim/neovim/releases/) page.

[Managed packages] are in [Homebrew], [Debian], [Ubuntu], [Fedora], [Arch Linux],
[Gentoo], and more!

Install from source
-------------------

The build is CMake-based, but a Makefile is provided as a convenience.

    make CMAKE_BUILD_TYPE=RelWithDebInfo
    sudo make install

To install to a non-default location:

    make CMAKE_INSTALL_PREFIX=/full/path/
    make install

To skip bundled (`third-party/*`) dependencies:

1. Install the dependencies using a package manager.
   ```
   sudo apt install gperf luajit luarocks libuv1-dev libluajit-5.1-dev libunibilium-dev libmsgpack-dev libtermkey-dev libvterm-dev libutf8proc-dev
   sudo luarocks build mpack
   sudo luarocks build lpeg
   sudo luarocks build inspect
   ```
2. Build with `USE_BUNDLED=OFF`:
   ```
   make CMAKE_BUILD_TYPE=RelWithDebInfo USE_BUNDLED=OFF
   sudo make install
   ```

To inspect the build, these CMake features are useful:

- `cmake --build build --target help` lists all build targets.
- `build/CMakeCache.txt` (or `cmake -LAH build/`) contains the resolved values of all CMake variables.
- `build/compile_commands.json` shows the full compiler invocations for each translation unit.

See the [Building Neovim](https://github.com/neovim/neovim/wiki/Building-Neovim) wiki page for details.

Transitioning from Vim
--------------------

See [`:help nvim-from-vim`](https://neovim.io/doc/user/nvim.html#nvim-from-vim) for instructions.

Project layout
--------------

    ├─ ci/              build automation
    ├─ cmake/           build scripts
    ├─ runtime/         user plugins/docs
    ├─ src/nvim/        application source code (see src/nvim/README.md)
    │  ├─ api/          API subsystem
    │  ├─ eval/         VimL subsystem
    │  ├─ event/        event-loop subsystem
    │  ├─ generators/   code generation (pre-compilation)
    │  ├─ lib/          generic data structures
    │  ├─ lua/          Lua subsystem
    │  ├─ msgpack_rpc/  RPC subsystem
    │  ├─ os/           low-level platform code
    │  └─ tui/          built-in UI
    ├─ third-party/     CMake subproject to build dependencies
    └─ test/            tests (see test/README.md)

License
-------

Neovim contributions since [b17d96][license-commit] are licensed under the
Apache 2.0 license, except for contributions copied from Vim (identified by the
`vim-patch` token). See LICENSE for details.

    Vim is Charityware.  You can use and copy it as much as you like, but you are
    encouraged to make a donation for needy children in Uganda.  Please see the
    kcc section of the vim docs or visit the ICCF web site, available at these URLs:

            http://iccf-holland.org/
            http://www.vim.org/iccf/
            http://www.iccf.nl/

    You can also sponsor the development of Vim.  Vim sponsors can vote for
    features.  The money goes to Uganda anyway.

[license-commit]: https://github.com/neovim/neovim/commit/b17d9691a24099c9210289f16afb1a498a89d803
[nvim-features]: https://neovim.io/doc/user/vim_diff.html#nvim-features
[Roadmap]: https://neovim.io/roadmap/
[advanced UIs]: https://github.com/neovim/neovim/wiki/Related-projects#gui
[Managed packages]: https://github.com/neovim/neovim/wiki/Installing-Neovim#install-from-package
[Debian]: https://packages.debian.org/testing/neovim
[Ubuntu]: http://packages.ubuntu.com/search?keywords=neovim
[Fedora]: https://apps.fedoraproject.org/packages/neovim
[Arch Linux]: https://www.archlinux.org/packages/?q=neovim
[Gentoo]: https://packages.gentoo.org/packages/app-editors/neovim
[Homebrew]: https://formulae.brew.sh/formula/neovim

<!-- vim: set tw=80: -->
