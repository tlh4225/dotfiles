#!/bin/bash

# Install pathogen
git submodule add https://github.com/rvalente/vim-pathogen.git .vim/autoload

# Make the bundle directory
mkdir -p .vim/bundle

# Install all the submodules
git submodule add https://github.com/scrooloose/syntastic.git .vim/bundle/syntastic
git submodule add https://github.com/rodjek/vim-puppet.git .vim/bundle/vim-puppet
git submodule add https://github.com/altercation/vim-colors-solarized.git .vim/bundle/solarized
git submodule add https://github.com/kien/ctrlp.vim.git .vim/bundle/ctrlp
git submodule add https://github.com/godlygeek/tabular.git .vim/bundle/tabular
git submodule add https://github.com/msanders/snipmate.vim.git .vim/bundle/snipmate
git submodule add https://github.com/tpope/vim-fugitive.git .vim/bundle/vim-fugitive
git submodule add https://github.com/tpope/vim-pastie.git .vim/bundle/vim-pastie
git submodule add https://github.com/tpope/vim-markdown.git .vim/bundle/vim-markdown
git submodule add https://github.com/scrooloose/nerdtree.git .vim/bundle/nerdtree
git submodule add https://github.com/Lokaltog/vim-powerline.git .vim/bundle/vim-powerline
git submodule add https://github.com/mileszs/ack.vim.git .vim/bundle/ack