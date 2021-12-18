#!/bin/bash
#must run as root!

sudo apt update
sudo apt-get install x11vnc -y

sudo apt-get install xserver-xorg-video-dummy -y

cat << 'EOF' >> /usr/share/X11/xorg.conf.d/xorg.conf
Section "Device"
    Identifier  "Configured Video Device"
    Driver      "dummy"
EndSection

Section "Monitor"
    Identifier  "Configured Monitor"
    HorizSync 31.5-48.5
    VertRefresh 50-70
EndSection

Section "Screen"
    Identifier  "Default Screen"
    Monitor     "Configured Monitor"
    Device      "Configured Video Device"
    DefaultDepth 24
    SubSection "Display"
    Depth 24
    Modes "1920x1080"
    EndSubSection
EndSection
EOF

##########################
