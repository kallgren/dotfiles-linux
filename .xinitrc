#!/bin/sh

# xset +fp /usr/share/fonts/local &
# xset fp rehash &

# setxkbmap se &

# ip set wlan0 up &

# sh ~/.fehbg &
xsetroot -solid "#DDDDDD" &

sh ~/.scripts/statusbar &
exec wmfs
