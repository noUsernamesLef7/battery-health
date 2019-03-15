#!/bin/bash

batt_health=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep -o '[0-9]\{1,3\}.[0-9]\{1,4\}%')
current_date=$(date)
batt_health="$current_date - $batt_health"
echo $batt_health >> ~/battery_health.txt
