#!/bin/bash
source "$(dirname "$0")/helpers.sh"

while true; do
    LAST_TIME="$(cat ~/.cache/last_backup 2>/dev/null)"
    if [[ -z $LAST_TIME ]]; then
        colored "#FF0000" "NONE"
        exit 0
    elif [[ $LAST_TIME == "-" ]]; then
        colored "#00FF00" "RUNNING"
        exit 0
    fi

    TIME_DIFF=$(($(date +%s) - $LAST_TIME))
    DATE_DIFF=$(($TIME_DIFF / 60 / 60 / 24))
    DATE_DIFF_STR="${DATE_DIFF}d ago"

    if [[ $DATE_DIFF -gt 30 ]]; then
        colored "#FF0000" "$DATE_DIFF_STR"
    elif [[ $DATE_DIFF -gt 14 ]]; then
        colored "#FFFF00" "$DATE_DIFF_STR"
    else
        output "$DATE_DIFF_STR"
    fi

    # Wait 12 hours for next execution
    sleep 12h
done
