#!/bin/bash
for dev in /sys/bus/usb/devices/*/idVendor; do
    dir=$(dirname "$dev")
    devname=$(basename "$dir")
    # Get kernel devpath (without /sys prefix)
    devpath=$(readlink -f "$dir" | sed "s|^/sys||")
    if [ -n "$devpath" ]; then
        /usr/local/bin/usb-power-config.sh "$devpath"
    fi
done
