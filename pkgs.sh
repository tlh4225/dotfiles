#!/bin/bash

# Update Homebrew
brew update
brew tap homebrew/dupes

gems=(puppet puppet-lint methadone pry httparty)
pkgs=(bash curl git nmap autoconf automake apple-gcc42 libtool pkg-config openssl readline libyaml sqlite libxml2 libxslt libksba wget ack bash-completion tmux fping ctags proctools)

for gem in ${gems[*]}; do
  if [[ -f `which rvm` ]]; then
    echo "Install Gem: $gem..."
    gem install $gem
  else
    echo "Install RVM"; break
  fi
done

for pkg in ${pkgs[*]}; do
  if [[ -f `which brew` ]]; then
    echo "Installing Package: $pkg..."
    brew install $pkg
  else
    echo "Install Homebrew"; break
  fi
done