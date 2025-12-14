#!/bin/bash -x

sudo systemctl daemon-reload
sudo systemctl reset-failed podman-socket-fixperms.service

