#!/bin/bash

TABLET="huion-huion-tablet_hs64-pen"
MONITOR1="HDMI-A-1"             
MONITOR2="DP-3"         

CURRENT=$(hyprctl getdeviceproperty "$TABLET" output 2>/dev/null)

if [ "$CURRENT" = "$MONITOR1" ]; then
    hyprctl keyword device:$TABLET:output "$MONITOR2"
else
    hyprctl keyword device:$TABLET:output "$MONITOR1"
fi
