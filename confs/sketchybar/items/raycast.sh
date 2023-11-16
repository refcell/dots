#! /bin/bash

source $HOME/.config/sketchybar/colors.sh
PLUGIN_DIR="$HOME/.config/sketchybar/plugins"

opts=(
  icon=
  icon.color="0xAAC3B1E1"
  script="$PLUGIN_DIR/raycast.sh"
  click_script="open -a 'Raycast'; sketchybar --set raycast popup.drawing=off"
  icon.padding_left=12
  icon.padding_right=12
  label.padding_left=0
  label.padding_right=0
  label.drawing=off
  background.color="$BACKGROUND"
  background.corner_radius=8
)

sketchybar --add item raycast left --set raycast "${opts[@]}"
