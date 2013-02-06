# Shell Aliases
alias mkdir='mkdir -p'
alias ..='cd ..'
alias ns='netstat -lant | grep LISTEN'

# Mac OS X Specific
alias ll='ls -la'
alias lh='ls --color=auto -lasth | less -R'
alias con='screen /dev/tty.KeySerial1'

# SSH Aliases
alias sr='ssh -Y -lroot'
alias s='ssh -Y -ladministrator'
alias nx='ssh -ladmin'
alias ssh-x='ssh -c arcfour,blowfish-cbc -XC'
alias e=`which subl`

# Ruby Development
alias be='bundle exec'

# Git Aliases
if [[ -e `which git` ]]; then
	alias gp='git push'
	alias gc='git commit -v -a'
	alias ga='git add .'
	alias gb='git branch'
	alias gs='git status'
	alias gl='git log'
fi
