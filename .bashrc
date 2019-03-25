# Author: Maks Turtiainen (https://github.com/mjturt/)

# Vimistä PDF vieweri? (pdftotext ja vim täytyy olla asennettu)
function vimpdf() {
    pdftotext $1 temp.txt && vim temp.txt
}

# Lataa youtubesta mp3:na Tätä voi käyttää vaikka selaimen user skriptinä. (youtube-dl täytyy olla asennettu)
function joutube() {
    cd ~/musat
    youtube-dl --metadata-from-title "%(artist)s - %(title)s" --extract-audio --audio-format mp3 --add-metadata $1
}

# Tulostaa kaikki terminaalivärit
alias colors='for code ({000..255}) print -P -- "$code: %F{$code}COLORS%f"'

# Wikipedia komentorivillä. (elinks täytyy olla asennettu)
function wiki() {
    elinks -dump "https://fi.wikipedia.org/w/index.php?search=$1" | less
}
