#!/bin/bash
source "$(dirname "$0")/helpers.sh"

trap "exit" INT

while true; do
    NUM_PKGS=$(pacman -Quq | wc -l)
    NUM_AURS=$(pacaur -k --devel | wc -l)

    OUTPUT=()

    if [[ -n "$NUM_PKGS" && "$NUM_PKGS" != 0 ]]; then
        OUTPUT+=("$(pango_color '#FFFF00' "$NUM_PKGS PKG")")
    fi

    if [[ -n "$NUM_AURS" && "$NUM_AURS" != 0 ]]; then
        OUTPUT+=("$(pango_color '#FFFF00' "$NUM_AURS AUR")")
    fi

    output "${OUTPUT[*]}"
    sleep 1h
done
