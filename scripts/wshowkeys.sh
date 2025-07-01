#!/bin/bash


SERVICE="wshowkeys"
if pgrep -x "$SERVICE" >/dev/null
then
    killall wshowkeys
else
    wshowkeys -a bottom -F 'Sans Bold 30' -s '#B5B520ff' -f  '#ecd29cff' -b '#201B1488' -l 60
fi
