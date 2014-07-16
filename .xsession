#!/bin/bash

# xset +fp /usr/share/fonts/local &
# xset fp rehash &

# setxkbmap se &

# ip set wlan0 up &

statusarg=$([[ $(grep vanillalight ~/.Xdefaults) != "" ]] && echo "" || echo dark)

colorfile=$(cat ~/.Xdefaults | grep "\.colors" | cut -d '"' -f2)
bgcolor=$(sed -n "s/\*color0: *//p" "$colorfile")

hsetroot -solid "$bgcolor" &
compton -b &

xbindkeys &

~/.scripts/statusbar "$statusarg" &
exec wmfs
