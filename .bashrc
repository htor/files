source /etc/bash_completion
shopt -s extglob nullglob dotglob globstar
shopt -s cmdhist histappend cdspell
alias ls='ls -Gh'
alias ll='ls -l'
alias la='ll -a'
alias grep='grep --colour=auto'
alias scp='scp -p'
alias su='sudo su -l'
alias vi='vim'
alias c='cd /mnt/c/users/htor'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
branch() { git branch 2>/dev/null| sed -e '/^[^*]/d' -e 's/* \(.*\)/ @\1/'; }
EDITOR="vim"
PATH=".:$PATH:$HOME/.bin:$HOME/.npm-global/bin"
PS1='\w\[\e[1;34m\]$(branch)\[\e[m\] \$ '
HISTCONTROL=ignoredups:erasedups
HISTSIZE=100000
HISTFILESIZE=100000
