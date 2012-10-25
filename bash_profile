# Load bashrc
if [[ -f "$HOME/.bashrc" ]]; then
  source "$HOME/.bashrc"
fi

# Load Main Bash Completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  source `brew --prefix`/etc/bash_completion
else
  echo "Install bash-completion via Homebrew..."
  sleep 5
  brew install bash-completion
  source `brew --prefix`/etc/bash_completion
fi

# Source the git-prompt.sh files
if [ -f `brew --prefix`/share/git-core/contrib/completion/git-prompt.sh ]; then
  source `brew --prefix`/share/git-core/contrib/completion/git-prompt.sh
fi

# Load RVM Bash Completion
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

# Check for GRC
if [ -f `brew --prefix`/etc/grc.bashrc ]; then
  source "`brew --prefix`/etc/grc.bashrc"
else
  echo "Install grc via Homebrew..."
  sleep 5
  brew install grc
  source "`brew --prefix`/etc/grc.bashrc"
fi

# Load Local .bash_profile if it exists last.
if [ -f $HOME/.bash_profile.local ]; then
  source $HOME/.bash_profile.local
fi
