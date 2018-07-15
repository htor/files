shopt -s extglob nullglob dotglob globstar
shopt -s cmdhist histappend cdspell
alias ls='ls -Gh'
alias ll='ls -l'
alias la='ll -a'
alias grep='grep --colour=auto'
alias scp='scp -p'
alias su='sudo su -l'
EDITOR="vim"
PATH=".:$PATH:$HOME/.bin:/usr/local/opt/coreutils/libexec/gnubin"
PS1='\w \$ '
HISTCONTROL=ignoredups:erasedups
HISTSIZE=100000
HISTFILESIZE=100000
