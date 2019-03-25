#!/usr/bin/env bash
# Author: Maks Turtiainen (https://github.com/mjturt/)
echo "Moi!"
printf "Haluatko listata tiedostot? (k/e) " # tulostus
read -r VASTAUS # inputti muuttujaan
if [ "$VASTAUS" = "k" ]; then
    echo "Listataan tiedostot"
    ls
fi
