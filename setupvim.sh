#!/bin/bash

# First check to see if there is a .vim directory
# If there is move it aside and make a new empty one
# Else make the .vim directory
if [[ -d ~/.vim ]]; then
  mv ~/.vim ~/.vim.old
  git clone https://github.com/rvalente/.vim.git
else
  git clone https://github.com/rvalente/.vim.git
fi

# Now move into the directory and setup pathogen
cd ~/.vim
git submodule add https://github.com/tpope/vim-pathogen.git autoload
git submodule init
git submodule update

# Ensure there is a bundle directory for pathogen
mkdir -p ~/.vim/bundle

# Setup submodules
cd ~/.vim/bundle

# Create list of modules to add
modules=( https://github.com/scrooloose/syntastic.git https://github.com/rodjek/vim-puppet.git https://github.com/altercation/vim-colors-solarized.git https://github.com/kien/ctrlp.vim.git https://github.com/godlygeek/tabular.git https://github.com/msanders/snipmate.vim.git https://github.com/tpope/vim-fugitive.git https://github.com/tpope/vim-pastie.git https://github.com/tpope/vim-markdown.git https://github.com/scrooloose/nerdtree.git )

# Now add the submodules to the bundle directory
for element in $(seq 0 $((${#modules[@]} - 1))); do
  reponame=`echo "${modules[$element]}" | cut -d"/" -f5`
  git submodule add "${modules[$element]}" ~/.vim/bundle/"${reponame}" 
done
