hyprctl keyword decoration:blur:enabled false
sleep 0.1
grim -g "$(slurp)" - | wl-copy
hyprctl keyword decoration:blur:enabled true
