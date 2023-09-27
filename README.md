# mt76xxxledcontrol
A simple script to control the wifi led on mt76xxx usb wifi devices, tested on openwrt aarch64 using a panda wireless pau0d (mt7612u)
What it does is it checks for a connection on a wifi device, wlan0 by default and then uses some commands (i didnt make those, i forget where they came from, 
a support ticket regarding leds and the mt76x2u driver) to set the led to activity mode (on by default, blinks with activity) when a connection is present and turns the led off
when there is no connection, this is designed for client mode use only, i havent tested it for other modes.
