# Linux

* https://baireuther.de/lhb/ (Nachschlagewerk)

## Nachrichten

* https://www.linux-community.de/
* https://www.howtoforge.de/ (Blog)
* https://linuxnews.de/
* https://www.omgubuntu.co.uk/
* https://lwn.net/
* https://www.datacenter-insider.de/

## Kernel

* https://lwn.net/Articles/724198/ (AIO defects)
* https://lwn.net/Articles/724307/ (Block layer error handling)

## Webcam

* https://help.ubuntu.com/community/Webcam
* http://www.netzmafia.de/skripten/hardware/Webcam/
* https://www.ideasonboard.org/uvc/

### Webcam Settings

* https://www.kurokesu.com/main/2016/01/16/manual-usb-camera-settings-in-linux/

### Webcam Software

* https://www.linuxlinks.com/webcam/ webcam software overview
* https://github.com/econsysQtCAM/QtCAM


## Software

### Administration

* http://sdkman.io/ (jvm package manager)
* https://www.fail2ban.org/wiki/index.php/Main_Page
  + https://fedoraproject.org/wiki/Fail2ban_with_FirewallD
  + https://serverfault.com/questions/646167/why-is-fail2ban-not-banning-this-attack
  
#### Disk Usage

* https://www.makeuseof.com/tag/linux-disk-space-how-to-visualize-your-usage/

* https://github.com/shundhammer/qdirstat
* https://bitbucket.org/jeromerobert/k4dirstat/wiki/Home

#### Firewall

* firewalld
  + [firewalld tutorial](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-using-firewalld-on-centos-8-de)
  

#### Distributed filesystems

* https://github.com/tahoe-lafs/tahoe-lafs
* http://ori.scs.stanford.edu/

#### Backup

* https://www.backblaze.com/blog/backing-linux-backblaze-b2-duplicity-restic/
* https://support.nine.ch/artikel/wie-erstelle-ich-ein-backup-meines-root-v-servers
* https://www.datamate.org/duplicity-duply-datensicherung-auf-die-verlass-ist/

##### Duplicity

* http://duplicity.nongnu.org/
* https://github.com/zertrin/duplicity-backup.sh

##### Other

* https://restic.net/
  + https://github.com/restic/restic
* https://github.com/restic/others (list of other backup solutions)
* http://www.urbackup.org/
* https://www.bacula.org/ 
* https://burp.grke.org/
* https://github.com/miekg/rdup (rsync like)
* https://bup.github.io/
  + https://github.com/bup/bup
* https://borgbackup.readthedocs.io/en/stable/
  + https://github.com/borgbackup/borg
  + https://github.com/borgbackup/community
* https://github.com/NaPs/Marty
* [duplicati](https://duplicati.readthedocs.io/en/latest/) (cloud-enabled)
* [ogive](https://github.com/mgren/ogive) glacier backup
* https://rclone.org/ (more a sync tool but cloud-enabled)
* [syncovery](https://www.syncovery.com/) (commercial)
* [cloud db backup](https://github.com/backup-manager/backup-manager)
* [HashBackup](http://www.hashbackup.com/home)
* [qBackup](https://www.qualeed.com/en/qbackup/benchmarks/) (multi-platform, semi-commercial)
* https://www.msp360.com/ (commercial)

###### Cloud backup

####### Glacier 

* [boto3 to Glacier](https://superuser.com/questions/546507/i-need-a-simple-way-to-backup-files-to-amazon-glacier-from-the-command-line)
* [s3cmd to S3/Glacier](https://gist.github.com/macbookandrew/34dd7479b78888944afd)
* [AWS DataSync Glacier](https://aws.amazon.com/de/blogs/storage/protect-your-file-and-backup-archives-using-aws-datasync-and-amazon-s3-glacier/)
* [mtglacier to Glacier](https://cetteup.com/29/how-to-set-up-a-sync-backup-to-aws-glacier-on-linux-ubuntu-16-04-18-04/)
* [Syncovery to Glacier](https://manjaro.site/backup-debian-amazon-s3/)
* [Bacula to Cloud with RClone-change](https://www.bacula.lat/community/bacula-storage-in-any-cloud-with-rclone-and-rclone-changer/?lang=en)
* https://www.slant.co/options/2332/alternatives/~amazon-glacier-alternatives

####### Backblaze B2

* [S3FS with B2](https://help.backblaze.com/hc/en-us/articles/360047773653-Using-S3FS-with-B2)
* [B2 linux support](https://help.backblaze.com/hc/en-us/articles/217664628-How-does-Backblaze-support-Linux-Users-)
  + Supported: Duplicity, MSP360, qBackup, GoodSync, HashBackup, Duplicacy, Restic


####### Other

* https://wasabi.com/help/downloads/
  + [borgbackup/rclone](https://wasabi-support.zendesk.com/hc/en-us/articles/115003691192-How-do-I-use-BorgBackup-with-Wasabi-)
  + [s3fs with wasabi](https://wasabi-support.zendesk.com/hc/en-us/articles/115001744651-How-do-I-use-S3FS-with-Wasabi-)

#### Storage data encryption

* https://www.tecmint.com/file-and-disk-encryption-tools-for-linux/
* https://en.wikipedia.org/wiki/List_of_cryptographic_file_systems
* https://opendedup.org/odd/ (deduplication only)
  + https://www.admin-magazin.de/Das-Heft/2015/06/Workshop-Das-deduplizierende-Dateisystem-OpenDedup

* https://github.com/dyne/Tomb

### Multimedia

* https://gitlab.freedesktop.org/pipewire/pipewire/-/wikis/home

##### Desaster recovery

* https://github.com/rear/rear
  
### Office 

* http://wps-community.org/

### Clustering

* https://docs.linbit.com/docs/users-guide-8.4/#s-rhcs-config (DRBD)

### Monitoring

* https://www.theforeman.org/ lifecycle management
* https://www.icinga.com/
* https://checkmk.com/de/produkt/editionen
* https://de.wikipedia.org/wiki/Ganglia_(Software)
* https://grafana.com/
* https://www.elastic.co/de/kibana

### Troubleshooting

* https://unix.stackexchange.com/questions/128894/ssh-exchange-identification-connection-closed-by-remote-host-not-using-hosts-d

### Security

* https://www.certdepot.net/rhel7-get-started-random-number-generator/

#### Security blogs

* https://functionallyparanoid.com/
* https://www.kuketz-blog.de/
* https://www.autistici.org/ (hosting for you)

## Distros

* https://getsol.us/home/ solus and solus budgie
  + https://ubuntubudgie.org/

### Firewall distros

* http://www.koozali.org/home/about (SME Server)

### Fedora

* https://docs.fedoraproject.org/en-US/Fedora/26/html/Release_Notes/sect-changes-for-developers.html
* http://dnf.readthedocs.io/en/latest/dnf-1_vs_dnf-2.html
* https://getfedora.org/atomic/

#### Fedora - steps after install

* [nvidia driver (rpms)](https://itsfoss.com/install-nvidia-drivers-fedora/)
* [nvidia-driver (direct)](https://www.if-not-true-then-false.com/2015/fedora-nvidia-guide/)
* [dnf fastest mirror](https://darryldias.me/2020/how-to-setup-fastest-mirror-in-dnf/)

#### Fedora third party repositories

* https://rpmfusion.org/FedoraThirdPartyRepos
* http://kde-redhat.sourceforge.net/
* https://fedoraproject.org/wiki/Third_party_repositories

#### dnf tipps and tricks

* https://linoxide.com/list-installed-packages-fedora/

## Container

* LXC
  + https://www.linux-community.de/ausgaben/linuxuser/2015/03/frisch-verpackt/
* https://grapheneproject.io/ unikernel-like
  + https://github.com/oscarlab/graphene
* [gvisor](https://github.com/google/gvisor) gVisor is an application kernel, written in Go, that implements a substantial portion of the Linux system
* [flockport](https://www.flockport.com/)
* [orabuntu-lxc](https://sites.google.com/a/orabuntu-lxc.com/documentation/)
  + https://github.com/gstanden/orabuntu-lxc

### Desktop Container

* https://github.com/mviereck/x11docker
* https://superuser.com/questions/1407370/how-to-run-an-x11-application-xclock-on-podman
* https://github.com/DimaZirix/podbox
* https://github.com/containers/toolbox
* https://firejail.wordpress.com/
  + https://www.techrepublic.com/article/how-to-install-and-use-firejail-on-linux/
  + https://github.com/netblue30/firejail
* https://security.stackexchange.com/questions/56703/best-method-to-sandbox-x-applications-in-ubuntu
* https://manpages.ubuntu.com/manpages/precise/man8/sandbox.8.html
* https://subuser.org/news/0.3.html

### Container-faced Linux Distributions

#### Fedora Silverblue

* https://silverblue.fedoraproject.org/
  + https://docs.fedoraproject.org/en-US/fedora-silverblue/
* https://fedoramagazine.org/what-is-silverblue/
* https://discussion.fedoraproject.org/t/how-to-run-a-containerized-gui-application/570

#### Fedora CoreOS

* https://docs.fedoraproject.org/en-US/fedora-coreos/getting-started/
* https://docs.fedoraproject.org/en-US/fedora-coreos/faq/#_can_i_run_containers_via_docker_and_podman_at_the_same_time
* https://docs.fedoraproject.org/en-US/fedora-coreos/running-containers/
* https://developers.redhat.com/blog/2020/03/12/how-to-customize-fedora-coreos-for-dedicated-workloads-with-ostree/
* https://developers.redhat.com/blog/2020/03/10/how-to-run-containerized-workloads-securely-and-at-scale-with-fedora-coreos/
* [AWS CloudWatch on CoreOS](https://engineering.invisionapp.com/post/coreos-system-logs/)
* [libvirt support](https://www.ovirt.org/develop/release-management/features/virt/coreos-ignition-support.html)

##### Based on Fedora CoreOS

* [Fedora CoreOS reboot coordinator for Kubernetes](https://github.com/poseidon/fleetlock)
* https://dustymabe.com/2020/04/04/automating-a-custom-install-of-fedora-coreos/

##### Alternatives to Fedora CoreOS

* https://kinvolk.io/flatcar-container-linux/
* https://microos.opensuse.org/

### Docker 

* https://docs.docker.com/config/containers/container-networking/#dns-services
  + https://github.com/jderusse/docker-dns-gen
  + https://hub.docker.com/r/cosmicq/docker-bind/
  + https://github.com/sameersbn/docker-bind
  + http://www.damagehead.com/blog/2015/04/28/deploying-a-dns-server-using-docker/
* https://www.adelton.com/docs/containers/complex-application-in-container

#### Docker/Podman volumes

* [Overview](https://docs.docker.com/storage/volumes/)
* article on backup/restore
  + https://blog.ssdnodes.com/blog/docker-backup-volumes/
  + https://scorban.de/2018/02/06/auto-backup-fuer-docker-volumes/
  + https://gist.github.com/rockerBOO/48b777868f169042818ae7f66bc62502
  + https://stackoverflow.com/questions/26331651/how-can-i-backup-a-docker-container-with-its-data-volumes
* [Loomchild volume backup](https://hub.docker.com/p/loomchild/volume-backup)
  + https://github.com/loomchild/volume-backup
* [Futurice volume backup](https://github.com/futurice/docker-volume-backup)
* [Blacklabelops volumerize](https://github.com/blacklabelops/volumerize) uses
  + [duplicity](http://duplicity.nongnu.org/)
  + [jobber](https://github.com/dshearer/jobber)

### Moby

* https://github.com/moby/moby
  + https://mobyproject.org/projects/
* https://www.infoworld.com/article/3193904/containers/what-is-dockers-moby-project.html
* https://www.heise.de/developer/meldung/Docker-versus-Moby-Wie-geht-es-mit-Docker-weiter-3689886.html

### Balena (container for IoT)

* https://www.balena.io/docs/learn/welcome/introduction/
  + https://www.balena.io/blog/announcing-balena-a-moby-based-container-engine-for-iot/

## Rootless Container

* https://rootlesscontaine.rs/
* https://github.com/nodesource/distributions

## Linux on mobile phones

* https://ubports.com/de_DE/
  + https://devices.ubuntu-touch.io/
  + pinephone
    - https://www.heise.de/newsticker/meldung/Linux-auf-dem-Handy-Neuer-Anlauf-mit-dem-Pinephone-4696682.html
    - https://www.pine64.org/pinephone/
  + Volla phone
    - https://www.computerbase.de/2020-03/volla-phone-gigaset-linux-ubuntu-touch/
    - https://volla.online/
* https://www.plasma-mobile.org/index.html
  + https://wiki.postmarketos.org/wiki/Devices (and pixel 5X)
  + https://docs.plasma-mobile.org/Installation.html
* https://puri.sm/ (very expensive)
  + https://puri.sm/products/librem-5/pureos-mobile/
* https://halium.org/ abstraction layer
* https://sailfishos.org/ (commercial)
  + https://shop.jolla.com/ (xperia 10)
* https://copperhead.co/android/ (pixel 2 + 3)
  + https://piunikaweb.com/2019/02/05/the-demise-of-copperheados-and-rise-of-its-successors/
* https://github.com/dan-v/rattlesnakeos-stack (obskure)

## Linux block devices

### NBD (Remote block device)

* [nbdkit](https://github.com/libguestfs/nbdkit)
* [nbdkit man page](https://manpages.ubuntu.com/manpages/bionic/man1/nbdkit.1.html)

## systemd

* difference between user and system
  + https://superuser.com/questions/853717/what-is-the-difference-between-systemds-user-and-system-services
  + https://unix.stackexchange.com/questions/335825/how-to-distinguish-between-user-services-and-system-service-in-systemd
  + https://wiki.archlinux.org/index.php/systemd/User
  + https://wiki.ubuntuusers.de/systemd/User_Units/
* [timers](https://wiki.archlinux.de/title/Systemd/Timers) alternative to crond

### systemd and fs

* [reload on fstab](https://unix.stackexchange.com/questions/477794/how-to-force-os-reload-of-fstab/577321)
* `/etc/rc.d/rc.local` will be automatically executed (when x flag on file is set): https://www.cyberciti.biz/faq/how-to-enable-rc-local-shell-script-on-systemd-while-booting-linux-system/
* [get rid of rc.local](https://unix.stackexchange.com/questions/471824/what-is-the-correct-substitute-for-rc-local-in-systemd-instead-of-re-creating-rc)

# Huge pages 

* https://wiki.debian.org/Hugepages


## Linux package build

* https://wiki.archlinux.org/title/Creating_packages_for_other_distributions

### Cross-linux

* [basics](https://www.artificialworlds.net/blog/2007/02/22/creating-deb-and-rpm-packages/)
* [pacur](https://github.com/pacur/pacur) (docker-based)
* [fpm](https://github.com/jordansissel/fpm)
  + https://fpm.readthedocs.io/en/latest/intro.html
  + https://opensource.com/article/18/9/how-build-rpm-packages


### RPM

* [basics 1](https://documentation.suse.com/sbp/all/single-html/SBP-RPM-Packaging/index.html)
* [basics 2](https://opensource.com/article/18/9/how-build-rpm-packages)

### Deb

* [basics 1](http://www.hackgnar.com/2016/01/simple-deb-package-creation.html?m=1)
* [deb-o-matic](https://github.com/debomatic/debomatic)
  + https://deb-o-matic.readthedocs.io/en/stable/introduction.html
* [dh-make](https://salsa.debian.org/debian/dh-make) (debian)
* [pbuilder](https://wiki.ubuntuusers.de/Archiv/pbuilder-dist/) (ubuntu, chroot-based)

### Build services

* https://de.opensuse.org/Portal:Build_Service
* [copr](https://copr.fedorainfracloud.org)
  + [copr-cli](https://www.systutorials.com/docs/linux/man/1-copr-cli/)
  + https://hobo.house/2017/09/03/automate-rpm-builds-from-git-sources-using-copr/

### Caching packages

* https://fedoramagazine.org/use-the-dnf-local-plugin-to-speed-up-your-home-lab/
* https://github.com/aesiniath/docker.proxy
* https://gist.github.com/dergachev/8441335
