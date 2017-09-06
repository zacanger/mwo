#!/usr/bin/env bash

thing="$@"

echo -n '뭐? '

# TODO: this is dumb and very bad:
configs=(
  "$HOME/.bashrc"
  "$HOME/.bash_profile"
  "$HOME/.bash_aliases"
  "$HOME/.aliases"
  "$HOME/.zshrc"
)

if [ -d "$thing" ] || [ -f "$thing" ] ; then
  file $thing
elif [ -n "`which $thing`" ] ; then
  which $thing
elif [ -n "`type $thing`" ] ; then
  type -t $thing
else
  for c in "${configs[@]}" ; do
    if [ -f "$c" ] ; then
      grep -q "alias $thing" "$c" && echo "$thing: alias"
    fi
  done
fi
