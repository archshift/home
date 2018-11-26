#!/bin/bash

# Requires: UPower, ack

brightness_query() {
    dbus-send --type=method_call --print-reply=literal --system --dest="org.freedesktop.UPower"\
        /org/freedesktop/UPower/KbdBacklight org.freedesktop.UPower.KbdBacklight.GetBrightness | ack -o '(?<=int32 )[0-9]+'
}

brightness_set() {
    local CLAMPED=$(clamp_brightness "$1" || return 1)
    dbus-send --type=method_call --print-reply=literal --system --dest="org.freedesktop.UPower"\
        /org/freedesktop/UPower/KbdBacklight org.freedesktop.UPower.KbdBacklight.SetBrightness "int32:${CLAMPED}"
}

verify_int() {
    if [[ "$1" -ne "$1" ]]; then
        return 1
    fi
}

clamp_brightness() {
    if [[ "$1" -gt 100 ]]; then
        echo 100
    elif [[ "$1" -lt 0 ]]; then
        echo 0
    elif ! verify_int "$1"; then
        >&2 echo "ERROR: Attempted to set invalid brightness level of $1!"
        return 1
    else
        echo "$1"
        return
    fi

    >&2 echo "WARNING: Attempted to set a brightness level of $1, clamping to 0..100"
}

case "$1" in
    set)
        brightness_set "$2"
        ;;
    query)
        brightness_query
        ;;
    inc)
        brightness_set "$(($(brightness_query) + $2))"
        ;;
    dec)
        brightness_set "$(($(brightness_query) - $2))"
        ;;
    *)
        echo "Usage: $0 {set [x]|query|inc [x]|dec [x]}"
        ;;
esac
