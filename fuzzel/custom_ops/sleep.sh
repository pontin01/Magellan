#!/bin/bash

choice=$(printf "Sleep\n" | fuzzel --dmenu)

case "$choice" in
    Sleep) hyprlock ;;
esac

