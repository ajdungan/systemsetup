#!/bin/bash
#must run as root!
cat << 'EOF' >> /etc/systemd/system/glances.service
[Unit]
Description=Glances
After=network.target

[Service]
ExecStart=/usr/local/bin/glances -w
Restart=on-abort
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
EOF

# enable service (auto on startup)
sudo systemctl enable glances.service

#start service
sudo systemctl start glances.service
 #web on 0.0.0.0:61208 (local or system ip for network)

############references
#https://github.com/nicolargo/glances/wiki/Start-Glances-through-Systemd
