#! /bin/bash

CURRENT_VOLUME=$(osascript -e 'output volume of (get volume settings)')

if [ $CURRENT_VOLUME -eq 0 ]; then
    osascript -e "set Volume 3"
else
    osascript -e "set Volume 0"
fi
