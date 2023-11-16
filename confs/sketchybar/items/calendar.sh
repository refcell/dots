#! /bin/bash

source $HOME/.config/sketchybar/colors.sh
PLUGIN_DIR="$HOME/.config/sketchybar/plugins"

opts=(
  icon=
  icon.color="$BROWN_BORDER"
  script="$PLUGIN_DIR/calendar.sh"
  click_script="open -a 'Calendar'; sketchybar --set calendar popup.drawing=off"
  icon.padding_left=12
  icon.padding_right=12
  label.padding_left=0
  label.padding_right=0
  label.drawing=off
  background.color="$BACKGROUND"
  background.corner_radius=8
  background.border_color="$BROWN_BORDER"
)

sketchybar --add item calendar right --set calendar "${opts[@]}"
