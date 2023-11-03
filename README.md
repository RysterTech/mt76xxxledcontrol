# mt76xxxledcontrol
A simple script to control the wifi led on mt76xxx usb wifi devices, tested on openwrt aarch64 using a panda wireless pau0d (mt7612u)
What it does is it checks for a connection on a wifi device, wlan0 by default and then uses some commands from this page (https://github.com/morrownr/7612u) to set the led to activity mode (on by default, blinks with activity) when a connection is present and toggles the led on/off every second
when there is no connection, this is designed for client mode use only, i havent tested it for other modes.

NOTE: If you want to put this in your /etc/rc.local (startup) in openwrt, you must run it with parenthensis and and & symbol around it like this so it runs in a detatched console.  [EXAMPLE: ( /root/wifiled.sh )&
