#!/bin/bash
get_icon() {
    echo ""
}

get_icon_reboot() {
    echo "⭘"
}

get_icon_hypr() {
    echo ""
}

get_icon_shutdown() {
    echo "⏻"
}

case "$1" in
    "--get-icon" ) get_icon;;
    "--get-icon-reboot" ) set_icon_reboot;;
    "--get-icon-shutdown" ) set_icon_shutdown;;
esac
