#! /bin/bash

source $HOME/.config/sketchybar/colors.sh

apple_logo=(
  icon=""
  padding_left=0
  icon.padding_left=10
  icon.padding_right=10
  label.padding_right=0
  label.padding_left=0
  icon.color=$COLOR17
  click_script="open -a 'System Preferences'; sketchybar --set apple.logo popup.drawing=off"
  background.color="$BACKGROUND"
  background.height=30
  background.corner_radius=8
)

sketchybar --add item apple left --set apple "${apple_logo[@]}"
