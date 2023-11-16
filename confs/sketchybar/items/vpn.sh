#! /bin/bash

source $HOME/.config/sketchybar/colors.sh

PLUGIN_DIR="$HOME/.config/sketchybar/plugins"

opts=(
   icon=󱗼
   update_freq=60
   script="$PLUGIN_DIR/vpn.sh"
   click_script="open /Applications/Tailscale.app"
   icon.padding_left=12
   icon.padding_right=2
   label.padding_right=12
   background.color="$BACKGROUND"
   background.corner_radius=8
   background.border_color="$PINK_BORDER"
)

sketchybar --add item vpn right --set vpn "${opts[@]}" 
