#!/bin/bash
LOGO=""
TERMINAL=""
BROWSER=""
FILEMAN=""
CALC=""

term() {
    alacritty
}

brws() {
    firefox
}

file() {
    thunar
}

calc() {
    qalculate-gtk    
}

get_logo_icon() {
    echo "$LOGO"
}

get_term_icon() {
    echo "$TERMINAL"
}

get_brws_icon() {
    echo "$BROWSER"
}

get_file_icon() {
    echo "$FILEMAN"
}

get_calc_icon() {
    echo "$CALC"
}

case "$1" in
    "--logo" ) logo;;
    "--term" ) term;;
    "--brws" ) brws;;
    "--file" ) file;;
    "--calc" ) calc;;
    "--get-logo-icon" ) get_logo_icon;;
    "--get-term-icon" ) get_term_icon;;
    "--get-brws-icon" ) get_brws_icon;;
    "--get-file-icon" ) get_file_icon;;
    "--get-calc-icon" ) get_calc_icon ;;
esac
