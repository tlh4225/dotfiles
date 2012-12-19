#!/bin/bash
cd $HOME/Development/dotfiles
git submodule update --init --recursive
git submodule foreach 'git fetch origin; git checkout master; git reset --hard origin/master; git submodule update --recursive; git clean -dfx'
git clean -dfx
