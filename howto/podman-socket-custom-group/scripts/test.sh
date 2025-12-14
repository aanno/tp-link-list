#!/bin/bash -x

# Test cycle
# sudo systemctl stop podman-socket-fixperms.service
# systemctl --user stop podman.socket
# systemctl --user start podman.socket

# status
# ls -l /run/user/1000/docker.sock /run/user/1000/podman/podman.sock 
# remove
# rm /run/user/1000/docker.sock /run/user/1000/podman/podman.sock

# Watch the trigger
sudo journalctl -u podman-socket-fixperms.service -u podman-socket-fixperms.path -f

