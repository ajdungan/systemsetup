#!/bin/bash
############  x11vnc starup ################

#script to start x11vnc on system startup as a service
#goal is to have a persistent connection that works from system startup to shutdown/reboot
#WARNING: SECURITY IS NOT OF CONCERN 

#single command
x11vnc -display :0 -bg -rfbport 5900 -shared -forever -nonap -q -repeat -skip_lockkeys -noxdamage -tightfilexfer

#NOTE: don't run as root/sudo, must run as current user logged in using the display (normally default setting, ie no extra commends/options needed)

#######   options explained:  ########

#display :0 = display/monitor output 1 ...not sure config if multiple montiors are present
#-q = quiet?
#noap= no naps, naps happen when there isidle monitor activity and it cuts down on CPU/RAM usage but might cause connection hiccups
#shared = multiple clients can connect
#forever = persistent can disconnect/reconnect  w/o issues
#repeat = pressing keys makes continueal input not just one letter.backspace (?)
#-gui =gui open and set to to tray....but doesn't seem to work on script
#skip_lockkeys = this enables numlock (ie using the keypad)
#bg option is background
#default port is normally 5900 or 5901
#-rfbport 5901 ensures port is set to 5901 (or other specified value)


##### for improvement ########
#tweak setting for higher quality/more responsive display (refresh)
#optimize use of system resources


#######  debugging help
# etc/systemd/system/x11vnc.service
# sudo systemctl daemon-reload
# sudo systemctl enable disk-space-check.service
# https://linuxconfig.org/how-to-run-script-on-startup-on-ubuntu-20-04-focal-fossa-server-desktop
