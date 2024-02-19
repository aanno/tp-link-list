# Fedora Desktop Suspend

## Important config files

* `/etc/systemd/sleep.conf`

## Avoid suspend

* `xset s off`
* systemsettings -> 'Energiemodus' -> 'Sitzung in den Standby-Modus versetzen'

## Scripts

* suspendtime (real uptime): https://askubuntu.com/questions/321855/how-to-get-real-uptime/1186845#1186845
* dim monitors: https://askubuntu.com/questions/1155093/turn-off-all-monitors-while-watching-vlc-media-on-tv/1155095#1155095

### References

* https://discussion.fedoraproject.org/t/how-do-i-disable-automatic-suspend-in-fedora-36/63113
* https://askubuntu.com/questions/1187126/prevent-sleep-if-cpu-usage-is-high (a bit gnome specific)

## Linux Performance and Profiling

### High CPU load

* high CPU load from IO: https://tanelpoder.com/posts/high-system-load-low-cpu-utilization-on-linux/
* linux process snapper (pSnapper): https://tanelpoder.com/psnapper/

### ssd/hdd testing (not with smartctl)

* `iozone3` from https://www.iozone.org/
* `gnome-disks`

### smartctl

* https://linuxopsys.com/topics/test-ssd-hdd-health-in-linux
* https://www.howtoforge.com/how-to-check-ssd-hdd-health-in-linux/
* https://www.baeldung.com/linux/ssd-verify-health

#### References

* https://www.baeldung.com/linux/disk-performance-test
* https://askubuntu.com/questions/87035/how-to-check-hard-disk-performance
