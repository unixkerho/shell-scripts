#!/usr/bin/env bash
# Ei enää tar --help
# Author: Maks Turtiainen (https://github.com/mjturt/)
if [[ -f "$1" ]]; then
   case $1 in
   *.tar.bz2) tar xjf "$1" ;;
   *.tar.gz) tar xzf "$1" ;;
   *.bz2) bunzip2 "$1" ;;
   *.rar) rar x "$1" ;;
   *.gz) gunzip "$1" ;;
   *.tar) tar xf "$1" ;;
   *.tbz2) tar xjf "$1" ;;
   *.tgz) tar xzf "$1" ;;
   *.zip) unzip "$1" ;;
   *.Z) uncompress "$1" ;;
   *.tar.xz) tar xJf "$1" ;;
   *.xz) xz -d "$1" ;;
   *.7z) p7zip e "$1" ;;
   *) echo "'$1' cannot be extracted" ;;
   esac
else
   echo "'$1' is not a valid file"
fi
