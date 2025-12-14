#!/bin/bash

USER=tpasch
#GROUP_WANTED=720928
GROUP_WANTED=100

###

USERID=`id -u $USER`
USER_RUN=/run/user/$USERID
WATCH_DIR=$USER_RUN/podman
SOCKET=$WATCH_DIR/podman.sock
DOCKER_LINK=$USER_RUN/docker.sock
LOG=/var/log/podman-socket-fixperms.log

log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*" | tee -a "$LOG"
}

# Wait for user runtime directory
log "Waiting for $USER_RUN"
while [ ! -d "$USER_RUN" ]; do
    sleep 1
done
log "User runtime directory exists"

# Wait for podman directory
log "Waiting for $WATCH_DIR"
TIMEOUT=30
COUNT=0
while [ ! -d "$WATCH_DIR" ] && [ $COUNT -lt $TIMEOUT ]; do
    sleep 1
    COUNT=$((COUNT + 1))
done

if [ ! -d "$WATCH_DIR" ]; then
    log "ERROR: $WATCH_DIR not created after ${TIMEOUT}s"
    exit 1
fi
log "Podman directory exists"

fix_permissions() {
    if [ ! -S "$SOCKET" ]; then
        return
    fi
    
    CURRENT_GID=$(stat -c '%g' "$SOCKET")
    CURRENT_PERMS=$(stat -c '%a' "$SOCKET")
    
    if [ "$CURRENT_GID" = "$GROUP_WANTED" ] && [ "$CURRENT_PERMS" = "660" ] && \
       [ -L "$DOCKER_LINK" ] && [ "$(readlink "$DOCKER_LINK")" = "$SOCKET" ]; then
        return
    fi
    
    log "Fixing permissions"
    chgrp $GROUP_WANTED "$SOCKET"
    chmod 660 "$SOCKET"
    rm -f "$DOCKER_LINK"
    ln -s "$SOCKET" "$DOCKER_LINK"
    log "Fixed: $(ls -l "$SOCKET")"
}

# Fix on startup if socket exists
fix_permissions

# Monitor directory
log "Starting inotify monitor on $WATCH_DIR"
inotifywait -m -e create -e modify -e attrib "$WATCH_DIR" 2>/dev/null | while read -r path action file; do
    if [ "$file" = "podman.sock" ]; then
        log "Detected: $action on $file"
        sleep 0.2
        fix_permissions
    fi
done

