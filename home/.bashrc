#!/bin/bash

# Load colors
. ~/.colors

# Load functions
#. ~/.bash_functions

# Vi command mode
#set -o vi

# bash-completion
if [ -f /opt/local/etc/bash_completion ]; then
    . /opt/local/etc/bash_completion
fi

# Load PS1 theme
. ~/.bash_theme

# Load aliases at end to not conflict with anything
. ~/.bash_aliases

#export PAGER="/bin/sh -c \"unset PAGER;col -b -x | \
#  vim -R -c 'set ft=man nomod nolist' -c 'map q :q<CR>' \
#  -c 'map <SPACE> <C-D>' -c 'map b <C-U>' \
#  -c 'nmap K :Man <C-R>=expand(\\\"<cword>\\\")<CR><CR>' -\""
