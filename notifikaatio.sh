#!/usr/bin/env bash
# Notifikaatio SSH:n yli (Käyttöesimerkki: https://github.com/mjturt/dotfiles/blob/master/.mutt/scripts/sync.sh)
# Author: Maks Turtiainen (https://github.com/mjturt/)
ssh mjt@tp.turtia.org "tmux splitw 'zsh -c '\'' notify-send \"irssi\" \"Joku lähetti viestin!\" '\'' && mpv --quiet /home/mjt/ding.ogg'"

