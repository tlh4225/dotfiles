#!/bin/bash

files=( gitconfig gitignore irbrc rvmrc pryrc gemrc bash_aliases bash_profile bashrc bash_colors vimrc taskrc ctags )

for element in $(seq 0 $((${#files[@]} - 1))); do
  file="${files[$element]}"
  dotfile=".${file}"
  pwd=`pwd`

  mv ~/"${dotfile}" ~/"${dotfile}".bak
  ln -sf "${pwd}/${file}" ~/"${dotfile}"
done

ln -s "${pwd}/.vim" ~/.vim
