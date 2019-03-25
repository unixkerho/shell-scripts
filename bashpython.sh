#!/usr/bin/env bash
# Pythonia Bash-skriptissä
# Author: Maks Turtiainen (https://github.com/mjturt/)
BASHVAR="Moi Bash"
echo $BASHVAR
python - << EOF
pythonVar = "Moi Python"
print pythonVar
EOF
echo "Moi taas Bash"
