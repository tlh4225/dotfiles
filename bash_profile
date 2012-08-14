# Load bashrc
if [[ -f "$HOME/.bashrc" ]]; then
     source "$HOME/.bashrc"
fi

# Load Main Bash Completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
else
    echo "Install bash-completion via Homebrew"
    brew install bash-completion
fi

# Load RVM Bash Completion
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

if [ -f $HOME/.bash_profile.local ]; then
    . $HOME/.bash_profile.local
fi

