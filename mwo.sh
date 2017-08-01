#!/usr/bin/env bash

thing="$@"

# if [ -f "$HOME/.bashrc" ] ; then
  # echo "yes"
  # . "$HOME/.bashrc"
  # shopt -s expand_aliases
# fi

echo '뭐?'

if [ -d "$thing" ] || [ -f "$thing" ] ; then
  file $thing
elif [ -n "`which $thing`" ] ; then
  which $thing
fi
# elif [ -n "`type $thing`" ] ; then
  # type -t $thing
# fi

# order: type then which, or which then type?
# file
# type
# which
# apropos?
