#!/bin/bash
# ~/.config/hypr/scripts/cava_to_file.sh

RAMFILE="/dev/shm/cava_output.txt"

cava -p ~/.config/cava/config_hyprlock | while read -r line; do
    echo "$line" > "$RAMFILE"
done
