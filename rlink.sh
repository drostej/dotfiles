#!/bin/bash
#
# relinks all dotDOTTHINGS in home to the homedir
#
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

link_or_fail() {
  local file="$1"

  name_only=${file/home\//}

  if [ -e "${HOME}/${name_only}" ]; then
    echo "fail: '${file}'"
  else
    ln -s ${DIR}/home/${name_only} ~/${name_only}
    echo "ok  : ${file}'"
  fi
}

# Stash your environment variables in ~/.localrc. This means they'll stay out
# of your main dotfiles repository (which may be public, like this one), but
# you'll have access to them in your scripts.
if [[ -a ~/.localrc ]]
then
 source ~/.localrc
fi

# Link all files in home/
DOTTHINGS=$(find home -maxdepth 1 -type f -name ".*" -not -name "*DS_Store*")
for f in ${DOTTHINGS}; do
  link_or_fail $f
done

#link_or_fail "home/.zsh"
mkdir -p "${HOME}/.config"
DOTTHINGS=$(find home/.config -mindepth 1 -maxdepth 1 -type d)
for f in ${DOTTHINGS}; do
  link_or_fail $f
done