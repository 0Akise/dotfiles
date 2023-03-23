#!/bin/sh

get_day() {
    day=$(date '+%d')
    echo $day
}

get_month() {
    month=$(date '+%m')
    echo $month
}

get_year() {
    year=$(date '+%Y')
    echo $year
}

case "$1" in
    "--get-day" )   get_day;;
    "--get-month" ) get_month;;
    "--get-year" )  get_year;;
esac
