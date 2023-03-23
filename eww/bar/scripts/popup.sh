#!/bin/sh
LOCK_BATTERY="$HOME/.cache/eww-battery.lock"
LOCK_CALENDAR="$HOME/.cache/eww-calendar.lock"


run() {
        eww --config "$HOME/.config/eww/bar" open window_calendar
}

open_calendar() {        
    if [[ ! -f "$LOCK_CALENDAR" ]]; then
        touch "$LOCK_CALENDAR"
        run
    else
        eww --config "$HOME/.config/eww/bar" close window_calendar
        rm "$LOCK_CALENDAR"
    fi
}


case "$1" in
    "--calendar" ) open_calendar;;
esac
