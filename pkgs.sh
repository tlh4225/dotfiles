#!/bin/bash
gems=(puppet puppet-lint methadone pry tmuxinator httparty)
pkgs=(git git-flow wget libksba ack bash-completion tmux fping)

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
