#! /bin/bash

QUERIED_APP=$(yabai -m query --windows --window | jq ".app")
QUERIED_APP=${QUERIED_APP//\"/}
INFO=${INFO:-$QUERIED_APP}
INFO=${INFO:-""}

sketchybar --set $NAME label="$INFO"
