eval "$(/opt/homebrew/bin/brew shellenv)"
source /opt/homebrew/etc/bash_completion.d/git-prompt.sh
shopt -s extglob nullglob dotglob globstar
shopt -s cmdhist histappend cdspell
alias ls='ls -hG'
alias ll='ls -l'
alias la='ll -a'
alias grep='grep --colour=auto'
alias su='sudo su -l'
alias vi='vim'
alias tv='ssh arbium ./Programming/ubuvid/ubuvid.mjs'
alias repeat='cd ~/Programming/repeat-editor && npm start'
alias ffmpeg='ffmpeg -hide_banner'
alias ffprobe='ffprobe -hide_banner'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
ws() { open -na WebStorm.app --args "$@"; }
vlc() { open -na VLC.app --args "$@"; }
nvm() { brew unlink node && brew link --overwrite node@"$@"; }
export EDITOR="vim"
export PATH="$PATH:$HOME/.bin:."
export PS1='\w\[\e[1;35m\]$(__git_ps1 " @%s") \[\e[1;32m\]\$\[\e[m\] '
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=100000
export HISTFILESIZE=100000
export HOMEBREW_NO_ENV_HINTS=1
export HOMEBREW_NO_ANALYTICS=1
