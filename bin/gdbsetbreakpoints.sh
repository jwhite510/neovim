#!/bin/bash
grep -r -n --include \*.h --include \*.cpp --include \*.c "GDBBREAKPOINT" .\
	| cut -d ' ' -f 1 | rev | cut -d '/' -f 1 | rev | sed 's/.$//' | sed "s/^/b /" > breakpoints.gdb
cat breakpoints.gdb
