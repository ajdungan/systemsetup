#!/bin/bash

mkdir ~/.config/autostart
cd ~/.config/autostart


cat << 'EOF' >> ~/.config/autostart/mystartup.desktop
 [Desktop Entry]
 Type=Application
 Name=<x11vnc.sh>
Exec=bash -c '/path/to/the/script'
 #Icon=<full path to icon>
 Comment=<starvnc on login>
  X-GNOME-Autostart-enabled=true

EOF
##########################
