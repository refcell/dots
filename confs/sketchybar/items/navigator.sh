#! /bin/bash

source $HOME/.config/sketchybar/colors.sh
ITEM_DIR="$HOME/.config/sketchybar/items"
PLUGIN_DIR="$HOME/.config/sketchybar/plugins"

opts=(
  background.corner_radius=8
  background.height=22
  background.padding_top=20
  background.color=0x30ffffff
  background.drawing=off
  background.border_width=0
  label.drawing=off
  script="$PLUGIN_DIR/space.sh"
)

SPACE_ICONS=("2" "3" "4" "5" "6" "7" "8" "9" "10")

spaces=(
  space.1
)
sketchybar --add space space.1 left                                    \
           --set space.1 associated_space=1                            \
                            icon=1                                     \
                            click_script="yabai -m space --focus 1"    \
                            background.padding_left=12                 \
                            background.padding_right=2                 \
                            "${opts[@]}"
for i in "${!SPACE_ICONS[@]}"
do
  sid=$(($i+2))
  spaces+=(space.$sid)
  sketchybar --add space space.$sid left                                 \
             --set space.$sid associated_space=$sid                      \
                              icon=${SPACE_ICONS[i]}                     \
                              click_script="yabai -m space --focus $sid" \
                              background.padding_left=8                 \
                              background.padding_right=2                 \
                              "${opts[@]}"
done

source "$ITEM_DIR/space_separator.sh"
source "$ITEM_DIR/app.sh"

sketchybar --add bracket spaces "${spaces[@]}" space_separator app \
           --set spaces background.color=$BACKGROUND \
                        background.corner_radius=8
