# Linux

* https://baireuther.de/lhb/

## Kernel

* https://lwn.net/Articles/724198/ (AIO defects)
* https://lwn.net/Articles/724307/ (Block layer error handling)

## Webcam

* https://help.ubuntu.com/community/Webcam
* http://www.netzmafia.de/skripten/hardware/Webcam/
* https://www.linuxlinks.com/webcam/ webcam software overview


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
* https://bup.github.io/
  + https://github.com/bup/bup
* https://borgbackup.readthedocs.io/en/stable/
  + https://github.com/borgbackup/borg
  + https://github.com/borgbackup/community
* https://github.com/NaPs/Marty

### Multimedia

* https://gitlab.freedesktop.org/pipewire/pipewire/-/wikis/home

##### Desaster recovery

* https://github.com/rear/rear
  
### Office 

* http://wps-community.org/

### Clustering

* https://docs.linbit.com/docs/users-guide-8.4/#s-rhcs-config (DRBD)

### Monitoring

* https://www.theforeman.org/
* https://www.icinga.com/

### Troubleshooting

* https://unix.stackexchange.com/questions/128894/ssh-exchange-identification-connection-closed-by-remote-host-not-using-hosts-d

### Security

* https://www.certdepot.net/rhel7-get-started-random-number-generator/

## Distros

* https://getsol.us/home/ solus and solus budgie
  + https://ubuntubudgie.org/

### Firewall distros

* http://www.koozali.org/home/about (SME Server)

### Fedora

* https://docs.fedoraproject.org/en-US/Fedora/26/html/Release_Notes/sect-changes-for-developers.html
* http://dnf.readthedocs.io/en/latest/dnf-1_vs_dnf-2.html
* https://getfedora.org/atomic/

## Container

* LXC
  + https://www.linux-community.de/ausgaben/linuxuser/2015/03/frisch-verpackt/
* https://grapheneproject.io/ unikernel-like
  + https://github.com/oscarlab/graphene

### Desktop Container

* https://github.com/mviereck/x11docker
* https://superuser.com/questions/1407370/how-to-run-an-x11-application-xclock-on-podman
* https://github.com/DimaZirix/podbox
* https://github.com/containers/toolbox
* https://firejail.wordpress.com/
  + https://www.techrepublic.com/article/how-to-install-and-use-firejail-on-linux/
* https://security.stackexchange.com/questions/56703/best-method-to-sandbox-x-applications-in-ubuntu
* https://manpages.ubuntu.com/manpages/precise/man8/sandbox.8.html
* https://subuser.org/news/0.3.html

### Container-faced Linux Distributions

#### Fedora Silverblue

* https://silverblue.fedoraproject.org/
  + https://docs.fedoraproject.org/en-US/fedora-silverblue/
* https://docs.fedoraproject.org/en-US/fedora-silverblue/
* https://discussion.fedoraproject.org/t/how-to-run-a-containerized-gui-application/570

#### Fedora CoreOS

* https://docs.fedoraproject.org/en-US/fedora-coreos/getting-started/
* https://docs.fedoraproject.org/en-US/fedora-coreos/faq/#_can_i_run_containers_via_docker_and_podman_at_the_same_time
* https://docs.fedoraproject.org/en-US/fedora-coreos/running-containers/
* https://developers.redhat.com/blog/2020/03/12/how-to-customize-fedora-coreos-for-dedicated-workloads-with-ostree/
* https://developers.redhat.com/blog/2020/03/10/how-to-run-containerized-workloads-securely-and-at-scale-with-fedora-coreos/

### Docker 

* https://docs.docker.com/config/containers/container-networking/#dns-services
  + https://github.com/jderusse/docker-dns-gen
  + https://hub.docker.com/r/cosmicq/docker-bind/
  + https://github.com/sameersbn/docker-bind
  + http://www.damagehead.com/blog/2015/04/28/deploying-a-dns-server-using-docker/
* https://www.adelton.com/docs/containers/complex-application-in-container

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
