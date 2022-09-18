#!/usr/bin/env bash

status=$(uptime | cut -d',' -f 1 | cut -d 'p' -f 2-)
uptime=$(echo $status)

sketchybar --set $NAME icon="羽" label="uptime: $uptime" 
