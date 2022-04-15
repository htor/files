eval "$(/opt/homebrew/bin/brew shellenv)"
for comp in npm docker git-prompt.sh
do
  source /opt/homebrew/etc/bash_completion.d/$comp
done
shopt -s extglob nullglob dotglob globstar
shopt -s cmdhist histappend cdspell
alias ls='ls -hG'
alias ll='ls -l'
alias la='ll -a'
alias grep='grep --colour=auto'
alias su='sudo su -l'
alias vi='vim'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
rm() { mv -f "$@" ~/.Trash; }
export EDITOR="vim"
export PATH="$PATH:$HOME/.bin:."
export PS1='\w\[\e[1;34m\]$(__git_ps1 " @%s")\[\e[m\] \$ '
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=100000
export HISTFILESIZE=100000
export HOMEBREW_INSTALL_BADGE='<='
export HOMEBREW_NO_ENV_HINTS=1
export HOMEBREW_NO_ANALYTICS=1
