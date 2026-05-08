#!/bin/bash

choice=$(printf "Shutdown\n" | fuzzel --dmenu)

case "$choice" in
    Shutdown) shutdown ;;
esac

