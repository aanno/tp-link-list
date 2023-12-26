# fstrim and discard

## How to find out if luks is allowing discard

```bash
dmsetup table
# show 'allows_discards' in output
```

Normally, you use `/etc/crypttab` for luks

```bash
$ cat /etc/crypttab
luks-a6418d74-cefc-4fd3-8b34-3cb063124bd7 UUID=a6418d74-cefc-4fd3-8b34-3cb063124bd7 none discard
```

If there is the 'discard' option, it should work.

```bash
$ lsblk --discard
NAME   DISC-ALN DISC-GRAN DISC-MAX DISC-ZERO
sdc           0        4K       4G         0
├─sdc1        0        4K       4G         0
└─sdc2        0        4K       4G         0
```

If the DISC-GRAN and DISC-MAX are non-zero, discard is supported for that particular drive.

### References

* https://unix.stackexchange.com/questions/574400/how-to-enable-discards-on-encrypted-root

## How to find out if fstrim is working

Output of `fstrim -a -v` shows you what partions are _trimmed_.

```bash
$ fstrim -a -v
/boot/efi: 1004,6 MiB (1053421568 bytes) trimmed on /dev/nvme1n1p1
/boot: 1,7 GiB (1811255296 bytes) trimmed on /dev/nvme1n1p2
/home: 0 B (0 bytes) trimmed on /dev/mapper/lvm2-home
/: 0 B (0 bytes) trimmed on /dev/mapper/lvm2-root
```

It allow trim once a week, check

```bash
$ systemctl status fstrim.timer
● fstrim.timer - Discard unused filesystem blocks once a week
     Loaded: loaded (/usr/lib/systemd/system/fstrim.timer; enabled; preset: enabled)
     Active: active (waiting) since Mon 2023-12-25 16:33:58 CET; 1h 21min ago
    Trigger: Mon 2024-01-01 01:10:13 CET; 6 days left
   Triggers: ● fstrim.service
       Docs: man:fstrim

Dez 25 16:33:58 blacksnapper systemd[1]: Started fstrim.timer - Discard unused filesystem blocks once a week.
```

## lvm2 and discard

By default lvm2 does _not_ trim or discard. To enable it, the following is needed in `/etc/lvm/lvm.conf`:

```bash
issue_discards = 1
```

It is disputed if this only effects shrinking partitions or if it is _needed_ for submission of trim operation from fs to black device as well.

## Security implications

* https://askubuntu.com/questions/399211/is-enabling-trim-on-an-encrypted-ssd-a-security-risk
* http://asalor.blogspot.com/2011/08/trim-dm-crypt-problems.html

Unused sectors could be tracked. Recovery of trimmed sectors is _not_ possible.

### References

* https://mvysny.github.io/ssd-discard/

## How can I discard for a whole partition/systemd

There is `blkdiscard`, **but it will erase the partion/ssd**.

```bash
sudo blkdiscard /dev/sde5
```

### References

* https://superuser.com/questions/308251/how-to-trim-discard-a-whole-ssd-partition-on-linux
* https://superuser.com/questions/1801429/looking-for-smartctl-nvme-log-error-explanation-0xa013-0x8004-and-0x9016-0x8004 smart error log

```bash
```

```bash
```

```bash
```

```bash
```

