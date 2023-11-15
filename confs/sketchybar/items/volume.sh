#! /bin/bash

source $HOME/.config/sketchybar/colors.sh

PLUGIN_DIR="$HOME/.config/sketchybar/plugins"

opts=(
   script="$PLUGIN_DIR/volume.sh"
   click_script="$PLUGIN_DIR/sound.sh"
   icon.padding_left=10
   icon.padding_right=10
   label.padding_left=0
   label.padding_right=0
   label.drawing=off
   background.color="$BACKGROUND"
   background.height=30
   background.corner_radius=8
)

sketchybar --add item volume right --set volume "${opts[@]}" --subscribe volume volume_change
