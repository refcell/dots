#! /bin/bash

source $HOME/.config/sketchybar/colors.sh

PLUGIN_DIR="$HOME/.config/sketchybar/plugins"

opts=(
   icon=󰖩
   script="$PLUGIN_DIR/wifi.sh"
   click_script="open /System/Library/PreferencePanes/Network.prefPane/"
   icon.padding_left=12
   icon.padding_right=2
   label.padding_left=4
   label.padding_right=12
   background.color="$BACKGROUND"
   background.corner_radius=8
   background.border_color="$COLOR11"
)

sketchybar --add item wifi right --set wifi "${opts[@]}" --subscribe wifi wifi_change
