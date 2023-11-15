#! /bin/bash

source $HOME/.config/sketchybar/colors.sh

WIFI=$(networksetup -getairportnetwork en0 | cut -c 24-)
WIFI=${WIFI:-"Not Connected"}
WIFI=${INFO:-$WIFI}

sketchybar --set $NAME label="${WIFI}" icon.color="$COLOR12" label.color="0xFFC1E1C1"
