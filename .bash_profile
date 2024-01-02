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
alias ubutv='~/icloud/Programming/ubutv/ubutv.mjs'
alias framing='cd ~/icloud/Programming/framing && npm run dev'
alias ffmpeg='ffmpeg -hide_banner'
alias ffprobe='ffprobe -hide_banner'
ws() { open -na WebStorm.app --args "$@"; }
vlc() { open -na VLC.app --args "$@"; }
nvm() { brew unlink node && brew link --overwrite node@"$@"; }
lufs() {
  ffmpeg -i "$@" -af ebur128=framelog=verbose -f null - 2>&1 | \
    awk '/I:/{print $2}'
}
export EDITOR="vim"
export PATH="$PATH:$HOME/icloud/Programming/unix-files/.bin:."
export PS1='\w\[\e[1;35m\]$(__git_ps1 " @%s") \[\e[1;32m\]\$\[\e[m\] '
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=100000
export HISTFILESIZE=100000
export HOMEBREW_NO_ENV_HINTS=1
export HOMEBREW_NO_ANALYTICS=1
