#! /bin/bash

source $HOME/.config/sketchybar/colors.sh

PLUGIN_DIR="$HOME/.config/sketchybar/plugins"

opts=(
   icon=󱗼
   update_freq=60
   script="$PLUGIN_DIR/vpn.sh"
   click_script="open /Applications/Tailscale.app"
   icon.padding_left=10
   icon.padding_right=2
   label.padding_right=10
   background.color="$BACKGROUND"
   background.height=30
   background.corner_radius=8
)

sketchybar --add item vpn right --set vpn "${opts[@]}" 
