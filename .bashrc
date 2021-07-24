source /etc/bash_completion
shopt -s extglob nullglob dotglob globstar
shopt -s cmdhist histappend cdspell
alias ls='ls -Gh --color=always'
alias ll='ls -l'
alias la='ll -a'
alias grep='grep --colour=auto'
alias scp='scp -p'
alias su='su -'
alias vi='vim'
alias c='cd /mnt/c/users/htor'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
branch() { git branch 2>/dev/null| sed -e '/^[^*]/d' -e 's/* \(.*\)/ @\1/'; }
wavify() { ffmpeg -i "$1" "${1%.*}".wav; }
export EDITOR="vim"
export PATH=".:$PATH:$HOME/.bin:$HOME/.npm-global/bin"
export PS1='\w\[\e[1;34m\]$(branch)\[\e[m\] \$ '
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=100000
export HISTFILESIZE=100000
export WWW_HOME="ddg.gg"
