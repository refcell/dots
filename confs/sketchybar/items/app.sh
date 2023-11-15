#! /bin/bash

source $HOME/.config/sketchybar/colors.sh

PLUGIN_DIR="$HOME/.config/sketchybar/plugins"

opts=(
  update_freq=10
  script="$PLUGIN_DIR/front_app.sh"
  icon.drawing=off
  background.color="$BACKGROUND"
  padding_left=2
  icon.padding_left=2
  icon.padding_right=2
  label.padding_left=6
  label.padding_right=6
  padding_right=8
  background.height=22
  background.corner_radius=8
  background.border_width=0
)

sketchybar --add item app left --set app "${opts[@]}" --subscribe app front_app_switched
