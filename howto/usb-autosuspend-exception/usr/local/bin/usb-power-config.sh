#!/bin/bash
DEVPATH="/sys$1"

# Read vendor and product IDs
VENDOR=$(cat "$DEVPATH/idVendor" 2>/dev/null)
PRODUCT=$(cat "$DEVPATH/idProduct" 2>/dev/null)

# Enable wakeup for all devices
if echo enabled > "$DEVPATH/power/wakeup" 2>/dev/null; then
    logger -t usb-power "Set wakeup=enabled for $VENDOR:$PRODUCT"
else
    logger -t usb-power "FAILED to set wakeup for $VENDOR:$PRODUCT at $DEVPATH"
fi

# Set power control based on device
if [[ "$VENDOR:$PRODUCT" == "046a:c122" ]] || [[ "$VENDOR:$PRODUCT" == "046d:c52b" ]]; then
    echo on > "$DEVPATH/power/control" 2>/dev/null
    logger -t usb-power "Set control=on for $VENDOR:$PRODUCT"
else
    echo auto > "$DEVPATH/power/control" 2>/dev/null
fi
