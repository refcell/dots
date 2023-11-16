#! /bin/bash

source $HOME/.config/sketchybar/colors.sh

PLUGIN_DIR="$HOME/.config/sketchybar/plugins"

opts=(
   update_freq=120
   script="$PLUGIN_DIR/battery.sh"
   icon.padding_left=12
   icon.padding_right=2
   icon.color="$COLOR14"
   label.padding_left=4
   label.padding_right=12
   background.color="$BACKGROUND"
   background.corner_radius=8
   background.border_color="$COLOR14"
)

sketchybar --add item battery right --set battery "${opts[@]}" --subscribe battery system_woke power_source_change
