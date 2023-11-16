#! /bin/bash

source $HOME/.config/sketchybar/colors.sh

if (/usr/local/bin/docker stats --no-stream &> /dev/null) then
  sketchybar --set $NAME icon="" icon.color="$COLOR12"
else
  sketchybar --set $NAME icon="" icon.color="$FOREGROUND"
  # sketchybar --remove $NAME
fi
