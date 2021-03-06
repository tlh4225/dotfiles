if [ -e /usr/share/terminfo/78/xterm-256color ]; then
	# Ensure the terminal is running in 256 color mode
	export TERM='xterm-256color'

	# LOAD SOLARIZED COLORS
	if [[ -e "$HOME/.bash_colors" ]]; then
		source "$HOME/.bash_colors"
	fi

	# Setup Git Prompt Variables
	export GIT_PS1_SHOWDIRTYSTATE=true
	export GIT_PS1_SHOWUNTRACKEDFILES=true

	# Set Prompt
	PS1="$base0[$green\u$base0@$red\h$base0:$orange\W$blue\$(__git_ps1)$base0]$green\$$base0 "
fi

# LOAD ALIASES
if [[ -e "$HOME/.bash_aliases" ]]; then
	source "$HOME/.bash_aliases"
fi

shopt -s checkwinsize
shopt -s hostcomplete
shopt -s expand_aliases

# No core dumps for me
ulimit -c 0

bind 'set show-all-if-ambiguous on'
bind 'set visible-stats on'
bind "set completion-ignore-case on"

# Editor and Pager Options
EDITOR='/usr/bin/vim'
VISUAL=$EDITOR
PAGER='less -m'
export EDITOR VISUAL PAGER

# Update Colors
GREP_OPTIONS='--color=auto'
GREP_COLOR='1;32'
CLICOLOR='1'
LSCOLORS='ExFxCxDxBxegedabagacad'
export GREP_OPTIONS GREP_COLOR CLICOLOR LSCOLORS

# Update History
HISTCONTROL=erasedups
HISTSIZE=10000
HISTTIMEFORMAT='%F %T '
export HISTSIZE HISTCONTROL HISTTIMEFORMAT
shopt -s histappend

# Load RVM
[[ -s "/Users/tlhaas/.rvm/scripts/rvm" ]] && source "/Users/tlhaas/.rvm/scripts/rvm"

# Load Main Bash Completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  source `brew --prefix`/etc/bash_completion
else
  brew install bash-completion
  source `brew --prefix`/etc/bash_completion
fi

# Source the git-prompt.sh files
if [ -f `brew --prefix`/share/git-core/contrib/completion/git-prompt.sh ]; then
  source `brew --prefix`/share/git-core/contrib/completion/git-prompt.sh
fi

# Load RVM Bash Completion
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion

# Set Path
PATH="/usr/local/bin:/usr/local/sbin:$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:$HOME/.rvm/bin"
export PATH
