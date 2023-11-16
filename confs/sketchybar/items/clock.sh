#! /bin/bash

source $HOME/.config/sketchybar/colors.sh

PLUGIN_DIR="$HOME/.config/sketchybar/plugins"

clock=(
   icon=󰅐
   update_freq=10
   script="$PLUGIN_DIR/clock.sh"
   icon.padding_left=12
   icon.padding_right=2
   icon.color="$PURPLE_BORDER"
   label.padding_left=4
   label.padding_right=12
   background.color="$BACKGROUND"
   background.corner_radius=8
   background.border_color="$PURPLE_BORDER"
)

sketchybar --add item clock right --set clock "${clock[@]}"
