#! /bin/bash

source $HOME/.config/sketchybar/colors.sh

PLUGIN_DIR="$HOME/.config/sketchybar/plugins"

opts=(
  icon=
  padding_left=6
  padding_right=6
  label.drawing=off
  icon.color="$YELLOW_BORDER"
)

sketchybar --add item space_separator left --set space_separator "${opts[@]}"
