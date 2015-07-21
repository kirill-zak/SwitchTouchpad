#!/bin/sh
DEVNAME="SynPS/2 Synaptics TouchPad"
PROP="Device Enabled"

ENABLED=$(( `xinput list-props "$DEVNAME" | grep "$PROP" | cut -d\: -f 2` ))

if [ $ENABLED = 1 ]; then
  ENABLE=0
else
  ENABLE=1
fi

xinput -set-prop "$DEVNAME" "$PROP" $ENABLE
