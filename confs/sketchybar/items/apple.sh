#! /bin/bash

source $HOME/.config/sketchybar/colors.sh

apple_logo=(
  icon=""
  padding_left=0
  icon.padding_left=12
  icon.padding_right=12
  label.padding_right=0
  label.padding_left=0
  # icon.color=$RED_BORDER
  click_script="open -a 'System Preferences'; sketchybar --set apple.logo popup.drawing=off"
  background.color="$BACKGROUND"
  background.corner_radius=8
  # background.border_color="$RED_BORDER"
)

sketchybar --add item apple left --set apple "${apple_logo[@]}"
