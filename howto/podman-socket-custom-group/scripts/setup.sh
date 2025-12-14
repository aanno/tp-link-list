#!/bin/bash -x

sudo chmod +x /usr/local/bin/podman-socket-fixperms.sh
sudo touch /var/log/podman-socket-fixperms.log
sudo chmod 644 /var/log/podman-socket-fixperms.log

