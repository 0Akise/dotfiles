#!/bin/bash
set_backlight() {
    brightnessctl set $1
}

get_backlight() {
    echo "$(brightnessctl get)"
}

get_icon() {
    echo ""
}

case "$1" in
    "--set-backlight" ) set_backlight "$2";;
    "--get-backlight" ) get_backlight;;
    "--get-icon" ) get_icon;;
esac
