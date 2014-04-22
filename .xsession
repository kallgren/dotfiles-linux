#!/bin/sh

# xset +fp /usr/share/fonts/local &
# xset fp rehash &

# setxkbmap se &

# ip set wlan0 up &

hsetroot -solid "#DDDDDD" &
compton -b

sh ~/.scripts/statusbar &
exec wmfs
