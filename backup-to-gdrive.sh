#!/usr/bin/env bash
# Backuppaa koko home-kansiosi Google Driveen
# Tee ensin gdriven setuppi komennolla "rclone config"
# Esim. Cronin voi laittaa tekemään tämän viikottain (crontab -e)

# Riippuvuudet: rclone, gpg (jos kryptataan)
# Author: Maks Turtiainen (https://github.com/mjturt/)

# Pitää olla sama mitä nimesit rclone configilla
REMOTENAME="gdrive"

FILENAME=$(date +%Y-%m-%d)-home-backup.tar.gz;

# Pakataan koko home
tar cvzf "$FILENAME" "$HOME"

# Voisi kryptata välissä (gpg -c jos haluat kryptata salasanalla avaimen sijasta)
#gpg -r user-id -e "$FILENAME"
#FILENAME=$FILENAME.gpg

# Lähetetään gdriveen
rclone copy "$FILENAME" "$REMOTENAME":backups

# Poistetaan ylimääräinen pakkaus
rm "$FILENAME"

echo "Backupattu $HOME Google Driveen ($REMOTENAME:/backups/$FILENAME)"
