eval "$(/opt/homebrew/bin/brew shellenv)"
source /opt/homebrew/etc/bash_completion.d/git-prompt.sh
complete -cf sudo
shopt -s extglob nullglob dotglob globstar
shopt -s cmdhist histappend cdspell
alias ls='ls -hGF'
alias ll='ls -l'
alias la='ll -a'
alias grep='grep --colour=auto'
alias su='sudo su -l'
alias vi='vim'
alias date='date +"%Y-%m-%dT%H:%M:%S%z"'
alias ubutv='~/icloud/coding/ubutv/ubutv.mjs'
alias framing='cd ~/icloud/coding/framing && npm run dev'
alias ffmpeg='ffmpeg -hide_banner'
alias ffprobe='ffprobe -hide_banner'
debug() { set -x; $($*); set +x; }
ws() { open -na WebStorm.app --args "$@"; }
vlc() { open -na VLC.app --args "$@"; }
nvm() { brew unlink node && brew link --overwrite node@"$@"; }
cwd() {
    cwd=${PWD/\/Users\/herman/\~}
    echo ${cwd/\Library\/Mobile Documents\/com~apple~CloudDocs/icloud}
}
lufs() {
  ffmpeg -i "$@" -af ebur128=framelog=verbose -f null - 2>&1 | \
    awk '/I:/{print $2}'
}
export EDITOR="vi"
export PATH="$PATH:~/.bin:~/icloud/coding/files/.bin:."
export PS1='$(cwd) \[\e[1;32m\]\$\[\e[0m\] '
export PROMPT_COMMAND='printf "\e]1;%s\a" "$USER@$(hostname)"'
export HISTCONTROL=ignoredups:erasedups
export HISTSIZE=100000
export HISTFILESIZE=100000
export HOMEBREW_NO_ENV_HINTS=1
export HOMEBREW_NO_ANALYTICS=1
