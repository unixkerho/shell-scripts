#!/usr/bin/env bash
# Nopeat commitit ja pushaus
# Käyttö: git-apuri "commit viesti"
# Author: Maks Turtiainen (https://github.com/mjturt/)

git add .
git commit -m "$1"
git push origin master
