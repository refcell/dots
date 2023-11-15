#! /bin/bash

source $HOME/.config/sketchybar/colors.sh
PLUGIN_DIR="$HOME/.config/sketchybar/plugins"

opts=(
  icon=
  icon.color="0xFFFF6961"
  script="$PLUGIN_DIR/calendar.sh"
  click_script="open -a 'Calendar'; sketchybar --set calendar popup.drawing=off"
  icon.padding_left=10
  icon.padding_right=10
  label.padding_left=0
  label.padding_right=0
  label.drawing=off
  background.color="$BACKGROUND"
  background.height=30
  background.corner_radius=8
)

sketchybar --add item calendar right --set calendar "${opts[@]}"
