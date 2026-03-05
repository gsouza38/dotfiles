#!/usr/bin/env bash
# Cycle layout: Dwindle -> Master -> Scrolling

LAYOUT=$(hyprctl getoption general:layout | awk '/str:/ {print $2}' | tr -d '"')

case "$LAYOUT" in
    dwindle)
        hyprctl keyword general:layout master
        notify-send -h string:x-canonical-private-synchronous:layout "Layout" "Master" -t 2000
        ;;
    master)
        hyprctl keyword general:layout scrolling
        notify-send -h string:x-canonical-private-synchronous:layout "Layout" "Scrolling" -t 2000
        ;;
    *)
        hyprctl keyword general:layout dwindle
        notify-send -h string:x-canonical-private-synchronous:layout "Layout" "Dwindle" -t 2000
        ;;
esac
