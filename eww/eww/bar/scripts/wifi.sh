#!/bin/bash
toggle() {
    if [ -z "$(nmcli connection show --active)" ]; then
        nmcli radio wifi on
    else
        nmcli radio wifi off
    fi
}

get_info() {  
    if [ -z "$(nmcli connection show --active)" ];then
        echo "󰤯 Offline"
    else 
        echo "󰤨 $(nmcli -t -f NAME connection show --active)"
    fi
}


get_icon() {
    if [ -z "$(nmcli connection show --active)" ]; then
        echo "󰤯"
    else
        echo "󰤨"
    fi
}

case "$1" in
    "--toggle" ) toggle;;
    "--get-info" ) get_info;;
    "--get-icon" ) get_icon;;
esac
