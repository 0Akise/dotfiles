#!/bin/bash
get_info() {
    BAT=$(ls /sys/class/power_supply | grep BAT | head -n 1)
    echo "$(cat /sys/class/power_supply/${BAT}/capacity)"
}

get_icon() {
    BAT=$(ls /sys/class/power_supply | grep BAT | head -n 1)
    BATSTATUS="$(cat /sys/class/power_supply/${BAT}/status)"
    BATVAL="$(cat /sys/class/power_supply/${BAT}/capacity)"

    if [[ "$BATSTATUS" == "Discharging" ]]; then
        if [ "$BATVAL" -gt 90 ]; then
            echo ""
        elif [ "$BATVAL" -gt 80 ]; then
            echo ""
        elif [ "$BATVAL" -gt 70 ]; then
            echo ""
        elif [ "$BATVAL" -gt 60 ]; then
            echo ""
        elif [ "$BATVAL" -gt 50 ]; then
            echo ""
        elif [ "$BATVAL" -gt 40 ]; then
            echo ""
        elif [ "$BATVAL" -gt 30 ]; then
            echo ""
        elif [ "$BATVAL" -gt 20 ]; then
            echo ""
        elif [ "$BATVAL" -gt 10 ]; then
            echo ""
        elif [ "$BATVAL" -gt  0 ]; then
            echo ""
        fi
    else
        echo ""
    fi
}

case "$1" in
    "--get-info" ) get_info;;
    "--get-icon" ) get_icon;;
esac
