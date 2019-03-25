#!/usr/bin/env bash
# Pythonia Bash-skriptissä
BASHVAR="Moi Bash"
echo $BASHVAR
python - << EOF
pythonVar = "Moi Python"
print pythonVar
EOF
echo "Moi taas Bash"
