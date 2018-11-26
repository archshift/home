#!/bin/bash

SCR_DIMS=$(xrandr --current | rg 'Screen 0.*current (\d+) x (\d+)' -o -r '$1 $2')
SCR_WIDTH=$(echo $SCR_DIMS | cut -d ' ' -f 1)
SCR_HEIGHT=$(echo $SCR_DIMS | cut -d ' ' -f 2)

mul_round() {
    echo "($1 * $2 + 0.5) / 1" | bc
}

dmenu -fn "Open Sans Regular"\
    -nb '#011F27' -nf '#ccffff' -sf '#ffffff' -dim 0.6\
    -w $(mul_round $SCR_WIDTH 0.9) -h 27\
    -x $(mul_round $SCR_WIDTH 0.05) -y $(mul_round $SCR_HEIGHT 0.05)\
    "$@"
