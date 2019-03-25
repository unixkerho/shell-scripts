#!/usr/bin/env bash
# Avaa kivan graafisen valikon (rofi täytyy olla asennettuna)
# Author: Maks Turtiainen (https://github.com/mjturt/)
OPTIONS="Lock\nReboot\nShutdown"
LAUNCHER="rofi -width 30 -dmenu -i -p rofi-power:"
option=`echo -e $OPTIONS | $LAUNCHER | tr -d '\r\n'`
if [ ${#option} -gt 0 ]; then
    case $option in
        Lock) i3lock ;;
        Reboot) reboot ;;
        Shutdown) systemctl poweroff ;;
        *) ;;
    esac
fi
