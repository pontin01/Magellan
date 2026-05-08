#!/bin/bash

choice=$(printf "Reboot\n" | fuzzel --dmenu)

case "$choice" in
    Reboot) reboot ;;
esac

