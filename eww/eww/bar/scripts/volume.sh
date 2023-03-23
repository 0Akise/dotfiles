#!/bin/bash
toggle() {
    pactl set-sink-mute @DEFAULT_SINK@ toggle
}

set_volume() {
    pactl set-sink-volume @DEFAULT_SINK@ $1%
}

get_volume() {
    pactl list sinks | grep '^[[:space:]]Volume:' | \
    head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,'
}

get_icon() {
    MUTE="$(pactl get-sink-mute @DEFAULT_SINK@)"
  	if [[ "$MUTE" == "Mute: no" ]]; then
	    echo "󰕾"
  	else
    	echo "󰖁"
  	fi
}

case "$1" in
    "--toggle" ) toggle;;
    "--set-volume" ) set_volume "$2";;
    "--get-volume" ) get_volume;;
    "--get-icon" ) get_icon;;
esac
