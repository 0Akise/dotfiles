#!/bin/bash
toggle() {
    pactl set-source-mute @DEFAULT_SOURCE@ toggle
}

set_mic() {
    pactl set-source-volume @DEFAULT_SOURCE@ $1%
}

get_mic() {
    pactl get-source-volume @DEFAULT_SOURCE@ | grep -e '%' | sed 's/ //g' | cut -d "/" -f 2 | sed 's/%//'
}

get_icon() {
    MUTE="$(pactl get-source-mute @DEFAULT_SOURCE@)"
  	if [[ "$MUTE" == "Mute: no" ]]; then
	    echo ""
  	else
    	echo ""
  	fi
}

case "$1" in
    "--toggle" ) set_backlight "$2";;
    "--set-mic" ) set_mic "$2";;
    "--get-mic" ) get_backlight;;
    "--get-icon" ) get_icon;;
esac
