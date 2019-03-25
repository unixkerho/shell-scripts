#!/usr/bin/env bash
echo "Moi!"
printf "Haluatko listata tiedostot? (k/e) " # tulostus
read -r VASTAUS # inputti muuttujaan
if [ "$VASTAUS" = "k" ]; then
    echo "Listataan tiedostot"
    ls
fi
