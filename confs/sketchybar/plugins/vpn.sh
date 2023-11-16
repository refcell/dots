#! /bin/bash

source $HOME/.config/sketchybar/colors.sh

TAILSCALE_BIN=$(which tailscale)
TAILSCALE_BIN=${TAILSCALE_BIN:-"/Applications/Tailscale.app/Contents/MacOS/Tailscale"}
TAILSCALE_STATUS=$($TAILSCALE_BIN status --json | jq ".Self.Online")
TAILSCALE_HOST=$($TAILSCALE_BIN status --json | jq ".Self.HostName")
TAILSCALE_HOST=${TAILSCALE_HOST//\"/}
TAILSCALE_LABEL=${TAILSCALE_HOST:-"Connected"}

echo $TAILSCALE_STATUS
echo $TAILSCALE_HOST
echo $TAILSCALE_LABEL

if [[ $TAILSCALE_STATUS == "true" ]]; then
  sketchybar --set $NAME icon=󱗼 label="${TAILSCALE_LABEL}" icon.color="$PINK_BORDER"
else
  sketchybar --set $NAME icon=󱗼 icon.color="$FOREGROUND" label.color="$FOREGROUND"
  # sketchybar --remove $NAME 
fi
