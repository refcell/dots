#! /bin/bash

# The $NAME variable is passed from sketchybar and holds the name of
# the item invoking this script:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting

source $HOME/.config/sketchybar/colors.sh

label="$(date '+%I:%M %m/%d')"

sketchybar --set $NAME label="$label" icon.color="$SELECTION_FOREGROUND"
