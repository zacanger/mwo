#!/usr/bin/env bash

# #!/usr/bin/env bash --init-file

thing="$@"

echo '뭐?'

if [ -f "$HOME/.bashrc" ] ; then
  # PS1='> '
  # shopt -s expand_aliases
  # . "$HOME/.bashrc"
  # exec bash

  if [ -d "$thing" ] || [ -f "$thing" ] ; then
    file $thing
  elif [ -n "`which $thing`" ] ; then
    which $thing
  elif [ -n "`alias $thing`" ] ; then
    alias $thing
  elif [ -n "`type $thing`" ] ; then
    type -t $thing
  fi
fi

# apropos? man?
