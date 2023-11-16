#! /bin/bash

source $HOME/.config/sketchybar/colors.sh

PLUGIN_DIR="$HOME/.config/sketchybar/plugins"

opts=(
   icon=
   update_freq=60
   script="$PLUGIN_DIR/docker.sh"
   click_script="open /Applications/Docker.app"
   icon.padding_left=12
   icon.padding_right=12
   label.padding_left=0
   label.padding_right=0
   background.color="$BACKGROUND"
   background.corner_radius=8
   background.border_color="$COLOR12"
)

sketchybar --add item docker right --set docker "${opts[@]}"



