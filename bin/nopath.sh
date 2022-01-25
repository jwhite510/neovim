#!/bin/bash
PS1=""
PS1="$PS1\[\e[1;94m\]" # blue
PS1="$PS1{"
PS1="$PS1\[\e[1;96m\]" # cyan
PS1="$PS1\u"
PS1="$PS1\[\e[1;93m\]" # yellow
PS1="$PS1@"
PS1="$PS1\[\e[1;96m\]" # blue
PS1="$PS1\h"
PS1="$PS1\[\e[1;94m\]"
PS1="$PS1}"
PS1="$PS1\[\e[1;37m\]"
PS1="$PS1>"
PS1="$PS1\[\e[0m\]"
export PS1=$PS1

