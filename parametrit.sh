#!/usr/bin/env bash
# Esimerkki parametrien ja user inputin parsimiseen
# Tehty UNIX-kerhoa varten
# Author: Maks Turtiainen (https://github.com/mjturt/)

# Funktio apujen tulostamiseen
apua() {
    echo "1 parametri on pakollinen. Parametrit:"
    echo
    echo "--hakemisto       Suorittaa hakemistotyökalun"
    echo "--levytila        Näyttää levytilan tilanteen"
    echo "--help            Näyttää tämän aputekstin"
    echo
}

# Funktio hakemistotyökalulle
hakemisto () {
    # User inputin parsiminen
    printf "Listaa tiedostot (l) vai laske paljon ne vievät tilaa (t) "
    read -r VASTAUS # inputti muuttujaan
    case $VASTAUS in
        l)
            echo "Tässä tämän hakemiston tiedostot:"
            ls
            exit 0 # 0:n palautus == "onnistui"
            ;;
        [tT]) # voi käyttää myös regexpiä jne.
            echo "Tämä hakemisto vie tämän verran tilaa:"
            du -sh .
            exit 0
            ;;
        *)
            echo -e "\\e[1;31mVirhe: odottamaton input\\e[0m"
            echo
            apua
            exit 1 # virhe: tulostaa avut ja palauttaa 1
            ;;
    esac
}

# Funktio levytilan näyttämiseen
levytila() {
    echo "Levytilan tilanne"
    df -h
}

# Aloitus
# Parametrien parsiminen
if [ "$#" -ne 1 ]; then # parametreja täyty olla tasan 1
    apua
    exit 1 # Virhe: tulostetaan avut ja palautetaan 1
else
    case "$1" in
        --hakemisto)
            hakemisto
            ;;
        --levytila)
            levytila
            exit 0
            ;;
        --help|-h)
            apua
            exit 0
            ;;
        *) # jos parametrit jotain muuta: avut ja virhe
            # Värejä
            echo -e "\\e[1;31mVirhe: tuntematon parametri \"${1}\"\\e[0m"
            echo
            apua
            exit 1
            ;;
    esac
fi
