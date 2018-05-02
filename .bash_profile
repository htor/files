shopt -s extglob nullglob dotglob
alias ls='ls -Gh'
alias ll='ls -l'
alias la='ll -a'
alias grep='grep --colour=auto'
alias scp='scp -p'
alias su='sudo su -l'

serve() { 
    http-server "$@" -o
}

encrypt() {
    file=$(basename "$@")
    gpg --yes -c "$file" > "$file".gpg
}

decrypt() {
    file=$(basename "$@" .gpg)
    gpg --yes -o "$file" -d "$file".gpg
}

cryptedit() {
    file=$(basename "$@" .gpg)
    decrypt "$file" && $EDITOR "$file" && encrypt "$file" && rm "$file"
}

flacify() {
    for f in *.wav; do ffmpeg -i "$f" "${f%.wav}.flac"; done
}

mp3ify() {
    for f in *.wav; do ffmpeg -i "$f" "${f%.wav}.mp3"; done
}

EDITOR="vim"
PATH="$PATH:$HOME/.bin:/usr/local/opt/coreutils/libexec/gnubin"
PS1='\w \$ '
