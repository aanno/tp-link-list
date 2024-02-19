# Linux boot

## Run script on boot

### Reference

* https://www.baeldung.com/linux/run-script-on-startup
* https://www.cyberciti.biz/faq/how-to-enable-rc-local-shell-script-on-systemd-while-booting-linux-system/ rc.local (deprecated)

## Linux virtual terminal (VT) console

### vconsole.conf

```bash
man vconsole.conf
man systemd-vconsole-setup
```

### font package

* `kbd`: latarcyrheb-sun32 (large), solar24x32 (large)
* `terminus-font`: ter-132n (large normal), ter-132b (large bold)

### Change font on linux kernel cli

* `fbcon=font:TER16x32`

### Reference

* [configure the linux console](https://www.linuxfromscratch.org/lfs/view/9.0-systemd/chapter07/console.html)
* [vconsole.conf man page](https://man.archlinux.org/man/vconsole.conf.5.en)
* https://wiki.archlinux.org/title/HiDPI#Linux_console_(tty) native HiDPI in kernel
* https://wiki.archlinux.org/title/KMSCON alternative VT for linux (HiDPI)

## Full disk encryption (FDE)

### Reference

* https://sysguides.com/fedora-36-with-luks-full-disk-encryption/
* [systemd-cryptenroll and fido2](https://fedoramagazine.org/use-systemd-cryptenroll-with-fido-u2f-or-tpm2-to-decrypt-your-disk/)
* [fde with dracut-sshd](https://uwot.eu/blog/remotely-unclock-a-full-disk-encrypted-fedora-33-server/)
* https://www.pavelkogan.com/2015/01/25/linux-mint-encryption/ (including /boot)

### Misc

* [full system snapshots with snapper](https://documentation.suse.com/de-de/sles/15-SP1/html/SLES-all/cha-snapper.html)
* [why /boot encryption is not common](https://discussion.fedoraproject.org/t/why-does-the-fedora-installer-not-allow-encrypting-boot-directory-in-the-fedora-installer/31605)
* [dracut-sshd](https://github.com/gsauthof/dracut-sshd) ssh login into initramfs
* [systemd-boot](https://wiki.archlinux.org/title/systemd-boot) linux uefi boot loader
* [grub2, grubby, kernel args](https://docs.fedoraproject.org/en-US/fedora/latest/system-administrators-guide/kernel-module-driver-configuration/Working_with_the_GRUB_2_Boot_Loader/)

```bash
```

```bash
```

```bash
```

```bash
```

```bash
```

