#!/bin/bash

for dev in /sys/bus/usb/devices/*/idVendor; do
    dir=$(dirname "$dev")
    echo "$(cat $dir/idVendor):$(cat $dir/idProduct) - control=$(cat $dir/power/control) wakeup=$(cat $dir/power/wakeup)"
done
