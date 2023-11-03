#!/bin/sh

PHY_PATH=$(ls /sys/kernel/debug/ieee80211/phy*/mt76 -d)
echo 0x770 > ${PHY_PATH}/regidx

while true; do
    # Check if wlan0 is connected
    if iw dev wlan0 link | grep -q "Connected"; then
        echo 0x840000 > ${PHY_PATH}/regval
    else
        echo 0x820000 > ${PHY_PATH}/regval
    fi
    sleep 5 # Adjust the interval as needed
done
