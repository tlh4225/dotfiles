#!/bin/bash

# Check to see if there is a .vim folder
# If there is, move it and make a symlink to the new one
if [[ -d ~/.vim ]]; then
  mv ~/.vim ~/.vim.old
  ln -s "${pwd}/.vim" ~/.vim
else
  ln -s "${pwd}/.vim" ~/.vim
fi

#git submodule add https://github.com/rvalente/vim-pathogen.git .vim/autoload
#
## Ensure there is a bundle directory for pathogen
#mkdir -p .vim/bundle
#
## Create list of modules to add
#git submodule add https://github.com/scrooloose/syntastic.git .vim/bundle/syntastic
#git submodule add https://github.com/rodjek/vim-puppet.git .vim/bundle/vim-puppet
#git submodule add https://github.com/altercation/vim-colors-solarized.git .vim/bundle/solarized
#git submodule add https://github.com/kien/ctrlp.vim.git .vim/bundle/ctrlp
#git submodule add https://github.com/godlygeek/tabular.git .vim/bundle/tabular
#git submodule add https://github.com/msanders/snipmate.vim.git .vim/bundle/snipmate
#git submodule add https://github.com/tpope/vim-fugitive.git .vim/bundle/vim-fugitive
#git submodule add https://github.com/tpope/vim-pastie.git .vim/bundle/vim-pastie
#git submodule add https://github.com/tpope/vim-markdown.git .vim/bundle/vim-markdown
#git submodule add https://github.com/scrooloose/nerdtree.git .vim/bundle/nerdtree
#git submodule add https://github.com/Lokaltog/vim-powerline.git .vim/bundle/vim-powerline
#git submodule add https://github.com/mileszs/ack.vim.git .vim/bundle/ack