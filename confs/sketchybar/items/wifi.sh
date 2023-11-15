#! /bin/bash

source $HOME/.config/sketchybar/colors.sh

PLUGIN_DIR="$HOME/.config/sketchybar/plugins"

opts=(
   icon=󰖩
   script="$PLUGIN_DIR/wifi.sh"
   icon.padding_left=10
   icon.padding_right=2
   label.padding_left=4
   label.padding_right=10
   background.color="$BACKGROUND"
   background.height=30
   background.corner_radius=8
)

sketchybar --add item wifi right --set wifi "${opts[@]}" --subscribe wifi wifi_change
