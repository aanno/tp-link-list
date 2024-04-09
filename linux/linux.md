# Linux

* https://baireuther.de/lhb/ (Nachschlagewerk)

## Nachrichten (Linux)

* https://www.linux-community.de/
* https://www.howtoforge.de/ (Blog)
* https://linuxnews.de/
* https://www.omgubuntu.co.uk/
* https://lwn.net/
* https://www.datacenter-insider.de/
* https://www.linuxuprising.com/
* https://lwn.net/
* https://www.computerbase.de/thema/linux/

## Blogs

* https://linuxnews.de/
* https://gnulinux.ch/
* https://www.michlfranken.de
* https://www.renefuerst.eu/blog/
* https://thenewstack.io/ dev-centered
* https://osbn.de/ aggregator

## Fondations

* [NLnet 2024 project](https://nlnet.nl/news/2024/20240212-announcing-projects.html) featured!

## Nachrichten (open source)

* https://www.sueddeutsche.de/thema/Open_Source
* https://www.zdnet.de/
* https://www.it-times.de/

## Distributions

* http://slackermedia.info/ - your digital studio
* https://bedrocklinux.org/ - mix and match meta-distribution
  + https://linuxnews.de/blendos-eines-fuer-fast-alle/
* https://www.gobolinux.org/ - install complete independent packages
* https://endlessos.com/ - end user and kids oriented
* [airyx](https://airyx.org/) - freeBSD based trying to run cocoa and osx applications
* [open source suse projects](https://opensource.suse.com/)
* [open suse](https://www.opensuse.org/)

## Kernel

* https://www.kernel.org/doc/html/v4.19/media/index.html linux media subsystem
* https://docs.kernel.org/wmi/devices/wmi-bmof.html
* https://elixir.bootlin.com/linux/latest/source cross referencer
* https://cateee.net/lkddb/ linux kernel driver database
* https://lwn.net/Articles/724198/ (AIO defects)
* https://lwn.net/Articles/724307/ (Block layer error handling)
* [overview of linux kernel](https://tldp.org/LDP/tlk/tlk-toc.html)

* [XanMod kernel](https://xanmod.org/)
  + https://www.linuxcompatible.org/story/xanmod-linux-kernel-679-released/

## Partion Layout

* [How to backup partition layout?](https://serverfault.com/questions/631949/how-to-backup-partition-layout)

## Shell and CLI

### envsubst

* [env variable interpolation](https://unix.stackexchange.com/questions/294835/replace-environment-variables-in-a-file-with-their-actual-values)
  + [node implementation](https://github.com/danday74/envsub)

## filesystems

* [cachefs](https://www.admin-magazine.com/HPC/Articles/Caching-with-CacheFS)
  + https://en.wikipedia.org/wiki/CacheFS
* [bcachefs](https://bcachefs.org/)
  + [bcachefs tools](https://evilpiepirate.org/git/bcachefs-tools.git/)
* [composefs](https://github.com/containers/composefs) read-only mountable filesystem trees, stacking on top of an underlying fs
  + [erofs](https://erofs.docs.kernel.org/en/latest/) block-based immutable filesystem with highly-optimized ondisk format

## FUSE filesystems

* [mergerfs](https://github.com/trapexit/mergerfs)
  + https://fedoramagazine.org/using-mergerfs-to-increase-your-virtual-storage/
* [blobfuse2](https://github.com/Azure/azure-storage-fuse) access Azure storage
* [gcsfuse](https://github.com/GoogleCloudPlatform/gcsfuse) access gcs
  + https://cloud.google.com/storage/docs/gcs-fuse?hl=de

## Encrypted Filesystems

* https://alternativeto.net/software/veracrypt
* https://www.tecmint.com/file-and-disk-encryption-tools-for-linux/
* https://www.fosslinux.com/50005/top-10-file-and-disk-encryption-tools-for-linux.htm

### File-based Encryption

* [sirikali](https://mhogomchungu.github.io/sirikali/) UI for cryfs, gocryptfs, securefs, ...
  + https://github.com/mhogomchungu/sirikali c++, 

* [gocryptfs](https://github.com/rfjakob/gocryptfs) go-lang, includes FIDO2 support
  + [cppcryptfs](https://github.com/bailey27/cppcryptfs) c++ port of gocryptfs (for Windows)
  + https://nuetzlich.net/gocryptfs/quickstart/
* [cryfs](https://www.cryfs.org/)
  + https://github.com/cryfs/cryfs c++
* [picocrypt](https://github.com/HACKERALERT/Picocrypt) go-lang
* [kryptor](https://www.kryptor.co.uk/features) c#
  + https://github.com/samuel-lucas6/Kryptor
* [veracrypt](https://www.veracrypt.fr/en/Home.html)
* [cryptomator](https://cryptomator.org/)
  + https://github.com/cryptomator/cryptomator java
* https://hat.sh/ JS-based file encryption in browser
  + https://github.com/sh-dv/hat.sh
* [file lock pea](https://eck.cologne/peafactory/en/html/file_pea.html)

## FUSE-like for windows

* [winfsp](https://github.com/winfsp/winfsp)
  + https://winfsp.dev/doc/Known-File-Systems/

### Memory management

#### KSM (Kernel Samepage Merging)

* https://vleu.net/projects/ksmp_preload/
  + https://github.com/unbrice/ksm_preload/forks
  + https://github.com/binfess/ksm_preload
* https://wiki.openvz.org/KSM_(kernel_same-page_merging)
* [KSM](https://www.kernel.org/doc/Documentation/vm/ksm.txt)
* https://lwn.net/Articles/330589/
* https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html/virtualization_tuning_and_optimization_guide/chap-ksm
* https://access.redhat.com/documentation/de-de/red_hat_enterprise_linux/7/html/virtualization_tuning_and_optimization_guide/chap-ksm
* https://lwn.net/Articles/928510/
* https://lwn.net/Articles/330589/
* https://dannyda.com/2020/12/10/how-to-tune-ksm-kernel-samepage-merging-sharing-in-proxmox-ve-pve/

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
* [neofetch](https://github.com/dylanaraps/neofetch) information about operating system, software and hardware
  + https://www.cyberciti.biz/howto/neofetch-awesome-system-info-bash-script-for-linux-unix-macos/

### usb boot sticks (iso)

* https://ventoy.net/en/index.html With ventoy, you don't need to format the disk over and over, you just need to copy the ISO
* https://www.balena.io/etcher
* https://en.wikipedia.org/wiki/Startup_Disk_Creator
* https://rufus.ie/en/ (windows)
* https://developers.redhat.com/blog/2016/04/26/fedora-media-writer-the-fastest-way-to-create-live-usb-boot-media liveusb-creator, now mediawriter
  + https://en.wikipedia.org/wiki/Fedora_Media_Writer
* https://docs.fedoraproject.org/en-US/quick-docs/creating-and-using-a-live-installation-image/
* https://github.com/livecd-tools/livecd-tools cli
* https://gitlab.gnome.org/GNOME/gnome-disk-utility

#### Firewall and Security

* https://logz.io/blog/5-open-source-nids/
* https://www.fail2ban.org/wiki/index.php/Main_Page
  + https://fail2ban.readthedocs.io/en/latest/filters.html
  + https://fedoraproject.org/wiki/Fail2ban_with_FirewallD
  + https://serverfault.com/questions/646167/why-is-fail2ban-not-banning-this-attack
* https://www.snort.org/ intrusion detection, its
* https://www.crowdsec.net/ its, blacklist
  + https://docs.crowdsec.net/docs/bouncers/nginx/
  + https://www.crowdsec.net/blog/crowdsec-with-nginx-proxy-manager
  + https://goneuland.de/nextcloud-absichern-mit-crowdsec/
* https://iplists.firehol.org/
  
#### Disk Usage

* https://www.makeuseof.com/tag/linux-disk-space-how-to-visualize-your-usage/

* https://github.com/shundhammer/qdirstat
* https://bitbucket.org/jeromerobert/k4dirstat/wiki/Home

#### Firewall

* firewalld
  + [firewalld tutorial](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-firewall-using-firewalld-on-centos-8-de)
  

#### Distributed filesystems

* https://en.wikipedia.org/wiki/Comparison_of_distributed_file_systems

* [moosefs](https://moosefs.com/products/#moosefs) semi-commercial
  + https://github.com/moosefs/moosefs
* [juicefs](https://juicefs.com/en/) commercial, POSIX, HDFS, and S3 Protocols
* [xtreemfs](https://www.xtreemfs.org/) supports HDFS, HPC
* https://docs.ceph.com/en/latest/cephfs/
* https://www.gluster.org/
* http://www.orangefs.org/
* https://github.com/tahoe-lafs/tahoe-lafs
* http://ori.scs.stanford.edu/

#### Backup

* https://www.backblaze.com/blog/backing-linux-backblaze-b2-duplicity-restic/
* https://support.nine.ch/artikel/wie-erstelle-ich-ein-backup-meines-root-v-servers
* https://www.datamate.org/duplicity-duply-datensicherung-auf-die-verlass-ist/
* https://opensource.com/article/19/3/backup-solutions
* https://www.computerweekly.com/de/tipp/14-Open-Source-und-Freeware-Tools-fuer-kostenloses-Backup

#### Windows Backup

* https://www.heise.de/tipps-tricks/Windows-11-Backup-erstellen-so-geht-s-6294027.html
  + https://www.computerbild.de/artikel/cb-Tipps-Software-Windows-Backup-Datensicherung-8100402.html


* https://www.ubackup.com/de/buy-ab-pro.html commercial
* https://www.macrium.com/reflectfree commercial
* https://www.easeus.de/backup-software/todo-backup-home-kaufen.html commercial

##### Duplicity

* https://duplicity.gitlab.io/
  + https://github.com/librsync/librsync
* https://github.com/zertrin/duplicity-backup.sh
* https://github.com/rhasselbaum/duplicity-unattended S3 backup with duplicity
* https://rdiff-backup.net/
  + https://github.com/rdiff-backup/rdiff-backup/

##### Timeshift and the like

* [timeshift](https://github.com/teejee2008/timeshift) - btrfs-based or rsync-based
  + https://github.com/wmutschl/timeshift timeshift btrfs-based for fedora 33
  + https://discussion.fedoraproject.org/t/a-quick-guide-to-setting-up-btrfs-timeshift-on-fedora-33/27573
* https://rsnapshot.org/

##### Duplicati

Duplicati is a semi professional solution. On linux, duplicati (web) server 
(`duplicati-server`) should run as service, but the service files are _not_
distributed with RPMs. There is _one_ password for the server (i.e. host) 
that controls backup of _all_ users.

Configuration is stored in `/usr/lib/duplicati/data` when run as service 
(and `/etc/default/duplicati` contains `--portable-mode`). Otherwise
configuration is under `$HOME/.config/Duplicati`.

Disaster recovery is delicate if you loose your backup configuration, server 
and/or encryption password. Hence it is a good idea to back up your 
configuration separate (this make the solution semi professional).

`duplicati-cli` is a separate tool that will _not_ use `duplicati-server`.

An alternative setup would be to _not_ run server as service, but users starts 
server individually (on different ports, with different password and encryption 
passwords).

On windows, it seems to me that duplicati is installed as service. Hence the 
alternative setup would need more work.

* [duplicati](https://duplicati.readthedocs.io/en/latest/) cloud-enabled, slow dev since 2021
  + https://www.duplicati.com/
  + https://github.com/duplicati/duplicati
  + [install duplicati as systemd service](https://duplicati.readthedocs.io/en/latest/02-installation/#installing-duplicati-on-linux)
  + [disaster recovery](https://duplicati.readthedocs.io/en/latest/08-disaster-recovery/)
    - [discussion about disaster recovery](https://forum.duplicati.com/t/what-happens-when-source-computers-hardware-fails/359)
  + [discussion about configuration location](https://forum.duplicati.com/t/where-is-the-configuration-database-saved/8252)
* [discussion about backing up configuration](https://forum.duplicati.com/t/backing-up-the-configuration/4403)
* [discussion about the broken common options implementation](https://forum.duplicati.com/t/how-do-default-options-work/2789)
* [duplicati-client](https://github.com/Pectojin/duplicati-client) old, alternative to duplicati-cli

##### Other

* https://restic.net/
  + https://github.com/restic/restic
* https://github.com/restic/others (list of other backup solutions)
* http://www.urbackup.org/
* https://www.bacula.org/ 
* https://burp.grke.org/
  + https://github.com/grke/burp
* https://github.com/miekg/rdup (rsync like)
* https://bup.github.io/ git-like
  + https://github.com/bup/bup
* https://borgbackup.readthedocs.io/en/stable/
  + https://www.borgbackup.org/
  + https://github.com/borgbackup/borg
  + https://github.com/borgbackup/community
* https://github.com/NaPs/Marty
* [kopia](https://kopia.io/)
  + https://github.com/kopia/kopia
* [duplicacy](https://github.com/gilbertchen/duplicacy) cloud-enabled, comparison with other backups, slow dev since 2021, semi-commercial
  + [duplicacy web site](https://duplicacy.com/)
  + [buy duplicacy](https://duplicacy.com/buy.html) - web client will cost, but CLI is free for consumer use
  + [storage backends](https://github.com/gilbertchen/duplicacy/wiki/Storage-Backends)
  + [RSA encryption](https://github.com/gilbertchen/duplicacy/wiki/RSA-encryption)
* [ogive](https://github.com/mgren/ogive) glacier backup
* https://rclone.org/ (more a sync tool but cloud-enabled)
* [cloud db backup](https://github.com/backup-manager/backup-manager)
* [HashBackup](http://www.hashbackup.com/home)
* http://www.amanda.org/
* https://www.urbackup.org/
* https://github.com/rdiff-backup/rdiff-backup
* https://freefilesync.org/ rsync-like, with ui, for win
* https://www.areca-backup.org/ open source, win, linux

* [qBackup](https://www.qualeed.com/en/qbackup/benchmarks/) (multi-platform, semi-commercial)
* [syncovery](https://www.syncovery.com/) (commercial)
* https://www.msp360.com/ (commercial)

##### Cloud backup and S3

* [s3proxy](https://github.com/gaul/s3proxy) translation from S3 to Backblaze B2, EMC Atmos, Google Cloud, Microsoft Azure, and OpenStack Swift, or local file system
* [aws s3 rest api](https://docs.aws.amazon.com/AmazonS3/latest/API/Welcome.html)
* [aws s3 action list](https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3.html)

###### WebDAV

* https://www.free-online-backup-services.com/features/webdav/
* https://docs.nextcloud.com/server/19/benutzerhandbuch/files/access_webdav.html
* https://www.webdavsystem.com/javaserver/server_examples/spring_boot_s3/ own WebDAV server in spring

* [webdavfs](https://github.com/miquels/webdavfs) fuse based _non-caching_ webDAV fs client
* [davfs](https://savannah.nongnu.org/projects/davfs2) fused based _caching_ webDAV fs client
  + https://wiki.archlinux.org/title/Davfs2
* [davfuse](https://github.com/Code7R/davfuse) turn _every_ fuse based fs into a webDAV _server_

###### Glacier 

* [boto3 to Glacier](https://superuser.com/questions/546507/i-need-a-simple-way-to-backup-files-to-amazon-glacier-from-the-command-line)
* [s3cmd to S3/Glacier](https://gist.github.com/macbookandrew/34dd7479b78888944afd)
* [AWS DataSync Glacier](https://aws.amazon.com/de/blogs/storage/protect-your-file-and-backup-archives-using-aws-datasync-and-amazon-s3-glacier/)
* [mtglacier to Glacier](https://cetteup.com/29/how-to-set-up-a-sync-backup-to-aws-glacier-on-linux-ubuntu-16-04-18-04/)
* [Syncovery to Glacier](https://manjaro.site/backup-debian-amazon-s3/)
* [Bacula to Cloud with RClone-change](https://www.bacula.lat/community/bacula-storage-in-any-cloud-with-rclone-and-rclone-changer/?lang=en)
* https://www.slant.co/options/2332/alternatives/~amazon-glacier-alternatives
* https://cloud.netapp.com/blog/amazon-s3-as-a-file-system

###### Other S3

* https://www.coralnodes.com/amazon-s3-alternatives/
* https://dev.to/cloud_bs/wasabi-storj-backblaze-et-al-are-promising-80-savings-compared-to-amazon-s3-whats-the-catch-4h62
* https://www.bestbackupreviews.com/guides/the-best-aws-s3-alternatives/
* https://www.coralnodes.com/amazon-s3-alternatives/
* https://sourceforge.net/software/compare/Amazon-S3-vs-Vultr-vs-Wasabi/
* https://www.taloflow.ai/compare/wasabi-hot-cloud-storage-vs-backblaze-b2-cloud-storage
* https://www.g2.com/compare/amazon-simple-storage-service-s3-vs-vultr

* [Wasabi](https://wasabi.com/help/downloads/)
  + [borgbackup/rclone](https://wasabi-support.zendesk.com/hc/en-us/articles/115003691192-How-do-I-use-BorgBackup-with-Wasabi-)
  + [How does SSE-C Encryption work with Wasabi](https://wasabi-support.zendesk.com/hc/en-us/articles/4414850567963-How-does-SSE-C-Encryption-work-with-Wasabi-)
  + [wasabi documentation](https://docs.wasabi.com/docs/rest-api-introduction)
  + [additions to aws s3 rest api](https://docs.wasabi.com/docs/operations-on-objects)
* https://min.io/ S3 on your linux (cluster)
* https://github.com/scality/cloudserver S3 server
* [Cloudflare R2](https://developers.cloudflare.com/r2/pricing/)
  + https://r2-calculator.cloudflare.com/
* [Synology C2](https://c2.synology.com/en-us/pricing/object-storage)
* [Backblaze B2](https://www.backblaze.com/cloud-storage/pricing)
  + [B2 linux support](https://help.backblaze.com/hc/en-us/articles/217664628-How-does-Backblaze-support-Linux-Users-)
  + Supported: Duplicity, MSP360, qBackup, GoodSync, HashBackup, Duplicacy, Restic
* [dreamhost storage](https://www.dreamhost.com/cloud/storage/)
* [storj](https://www.storj.io/pricing) distributed storage, cheap!
* [Alibaba Cloud OSS](https://www.alibabacloud.com/de/product/object-storage-service) only partly compatible to S3
  + [compatibility to S3](https://www.alibabacloud.com/help/en/oss/developer-reference/compatibility-with-amazon-s3)
  + [differences to S3](https://medium.com/@arsenyspb/migrate-api-from-aws-s3-to-aliyun-oss-640dd1e74201)

###### S3 based products

* [cloudian hyperstore](https://cloudian.com/products/hyperstore/) commercial, Military-Grade Security​

###### (Normal) Consumer Cloud Storage

* [Shadow Drive](https://shadow.tech/de-DE/drive)
* [Mega](https://mega.io/de/pricing)

###### Azure Blob Storage and S3 compatibility

* [S3 Proxy for Azure](https://devblogs.microsoft.com/cse/2016/05/22/access-azure-blob-storage-from-your-apps-using-s3-api/)
  + [s3proxy](https://github.com/bouncestorage/s3proxy) old, for azure, gcs
  + https://ventral.digital/posts/2020/10/11/s3-api-compatibility-on-microsoft-azure
* [glacier-proxy](https://github.com/bouncestorage/glacier-proxy)
* https://cloudblogs.microsoft.com/opensource/2017/11/09/s3cmd-amazon-s3-compatible-apps-azure-storage/

##### S3 clients

* https://askubuntu.com/questions/202072/what-is-a-good-amazon-s3-client

* https://github.com/minio/mc cli, go
* https://github.com/rclone/rclone go, many storages, featured!
  + https://rclone.org/rc/ even provides rest api
  + https://rclone.org/crypt/ include encryption layer
* [s3cmd](https://s3tools.org/usage)
* [aws cli](https://wasabi-support.zendesk.com/hc/en-us/articles/115001910791-How-do-I-use-AWS-CLI-with-Wasabi-)
* [s3sync](https://github.com/larrabee/s3sync)
* [s5cmd](https://github.com/peak/s5cmd) extremly fast, go-lang
  + https://knowledgebase.wasabi.com/hc/en-us/articles/360044600552-How-do-I-use-s5cmd-with-Wasabi-
* [aws cli](https://wasabi-support.zendesk.com/hc/en-us/articles/115001910791-How-do-I-use-AWS-CLI-with-Wasabi-)
* [davix](https://github.com/cern-fts/davix) http, webDAV, S3, and Azure Objects file management from CERN in C++
  + [davix documentation](https://davix.web.cern.ch/davix/docs/devel/)
  + [davix in wikipedia](https://en.wikipedia.org/wiki/DaviX)
* [filestash](https://github.com/mickael-kerjean/filestash) Dropbox-like file manager for FTP • FTPS • SFTP • WebDAV • Git • S3 • NFS • Samba • Artifactory

s5cmd example:
```bash
$ s5cmd --endpoint-url https://s3.eu-central-2.wasabisys.com --profile wasabi-ro ls
2023/05/04 16:46:27  s3://b-breitbandig
2023/06/18 11:03:19  s3://b-duplicati
2023/10/08 19:05:30  s3://b-tps-nas
```

##### S3 UI Clients (mostly capable to see other cloud storage)

* https://github.com/mickael-kerjean/filestash
* https://kapitainsky.github.io/RcloneBrowser/ native, rclone-based
  + https://github.com/kapitainsky/RcloneBrowser
* https://rclone.org/gui/ official rclone, browser-based, experimental
  + https://github.com/jasonchrion/rclone-webui-react
  + https://github.com/rclone/rclone-webui-react/tree/master
  + https://rclone.github.io/rclone-webui-react/#/login
* https://doublecommander.com/ really?
* https://cyberduck.io
* https://mountainduck.io/

###### File system access to S3

* https://juicefs.com/docs/community/installation/
  + https://github.com/juicedata/juicefs
  + https://juicefs.com/docs/community/s3_gateway/
  + https://juicefs.com/docs/community/comparison/juicefs_vs_s3fs/
  + https://juicefs.com/en/blog/usage-tips/juicefs-for-docker-data-persistent
  + https://juicefs.com/docs/cloud/use_juicefs_in_docker/
* https://github.com/s3ql/s3ql/
* https://github.com/archiecobbs/s3backer
* https://github.com/kahing/goofys (currently not well maintained)
  + [catfs](https://github.com/kahing/catfs) fuse based caching layer for remote filesystems
* https://github.com/s3fs-fuse/s3fs-fuse
* https://github.com/treeverse/lakeFS S3 compatible and backed by AWS S3, Azure Blob Storage, and Google Cloud Storage
  + https://lakefs.io/
* https://github.com/seaweedfs/seaweedfs
* [s3fs-fuse](https://github.com/s3fs-fuse/s3fs-fuse) basic, simplistic support (not intended as remote fs replacement)
  + [s3fs with wasabi](https://wasabi-support.zendesk.com/hc/en-us/articles/115001744651-How-do-I-use-S3FS-with-Wasabi-)
  + [S3FS with B2](https://help.backblaze.com/hc/en-us/articles/360047773653-Using-S3FS-with-B2)

s3fs-fuse example (with debug):
```bash
s3fs b-tps-nas ./mnt -o passwd_file=${HOME}/.passwd-s3fs -o url=https://s3.eu-central-2.wasabisys.com -o dbglevel=info -f -o curldbg
```

You could use catfs for (additional) caching:
```bash
#!/bin/bash -x

RAW_MOUNT="$HOME/.cache/wasabi/mnt"
TO_CACHE="$HOME/.cache/wasabi/to"
MOUNT="$HOME/data/wasabi"

mkdir -p $RAW_MOUNT || true
mkdir -p $TO_CACHE || true
mkdir -p $MOUNT || true

for i in b-breitbandig b-duplicati b-tps-nas; do
  # echo $i
  R="$RAW_MOUNT/$i"
  T="$TO_CACHE/$i"
  M="$MOUNT/$i"

  mkdir $R || true
  mkdir $T || true
  mkdir $M || true

  umount $R || true
  umount $M || true

  s3fs $i $R -o passwd_file=${HOME}/.passwd-s3fs -o url=https://s3.eu-central-2.wasabisys.com
  # ???
  catfs $R $T $M &
done
```


#### Google Cloud Storage GCS

##### Comparasion GCS vs. S3

* https://cloudmounter.net/amazon-s3-vs-google-cloud-storage/
* https://cloudinfrastructureservices.co.uk/aws-s3-vs-google-cloud-storage-which-is-better/

##### File system access to GCS

* https://github.com/GoogleCloudPlatform/gcsfuse
  + https://cloud.google.com/storage/docs/gcs-fuse?hl=de

#### Storage data encryption

* https://www.tecmint.com/file-and-disk-encryption-tools-for-linux/
* https://en.wikipedia.org/wiki/List_of_cryptographic_file_systems
* https://opendedup.org/odd/ (deduplication only)
  + https://www.admin-magazin.de/Das-Heft/2015/06/Workshop-Das-deduplizierende-Dateisystem-OpenDedup

* https://github.com/dyne/Tomb

#### Simple Solutions

* https://stackoverflow.com/questions/60221575/how-to-use-javascript-and-ajax-to-upload-into-wasabi-storage
  + https://wasabi-support.zendesk.com/hc/en-us/articles/360045339072-How-do-I-perform-client-side-browser-based-uploads-with-Wasabi

### Multimedia

* https://gitlab.freedesktop.org/pipewire/pipewire/-/wikis/home

##### Disaster recovery

* https://github.com/rear/rear
* http://ping.windowsdream.com/#howto
  
### Office 

* http://wps-community.org/
* https://github.com/ONLYOFFICE/CommunityServer web-based
  + https://www.onlyoffice.com/blog/de/2017/12/onlyoffice-vs-collabora-ein-kritischer-vergleich/

### Clustering

* https://docs.linbit.com/docs/users-guide-8.4/#s-rhcs-config (DRBD)

### Monitoring

#### Other Monitoring (and Alerting) Software

* https://www.theforeman.org/ lifecycle management
* https://www.icinga.com/
* https://checkmk.com/de/produkt/editionen
* https://de.wikipedia.org/wiki/Ganglia_(Software)
* https://grafana.com/
* https://www.elastic.co/de/kibana
* [graphite](https://github.com/graphite-project/graphite-web)
  + https://graphite.readthedocs.io/en/latest/overview.html
* https://labs.consol.de/de/omd/index.html (nagios)
  + https://labs.consol.de/de/omd/packages/thruk/
  + https://labs.consol.de/
* [netdata](https://github.com/netdata/netdata)
* https://www.monitorix.org/
* [apimon](https://github.com/ncarlier/apimon)
* [alerta](https://alerta.io/) - de-duplication and correlation
  + https://github.com/alerta/docker-alerta
  + https://github.com/mwalbeck/docker-alerta

#### Prometheus

* https://prometheus.io/
* https://prometheus.io/docs/introduction/comparison/
* https://www.augmentedmind.de/2021/10/03/prometheus-concepts/

#### InfluxDB (vs Prometheus)

* https://docs.influxdata.com/influxdb/v2.0/reference/flux/stdlib/experimental/prometheus/
* https://www.influxdata.com/integration/prometheus-monitoring-tool/
* https://db-engines.com/de/system/InfluxDB%3BPrometheus

### Troubleshooting

* https://unix.stackexchange.com/questions/128894/ssh-exchange-identification-connection-closed-by-remote-host-not-using-hosts-d

### Security

* https://www.certdepot.net/rhel7-get-started-random-number-generator/
* https://0pointer.net/blog/authenticated-boot-and-disk-encryption-on-linux.html linux secure boot problem

#### Security blogs

* https://functionallyparanoid.com/
* https://www.kuketz-blog.de/
* https://www.autistici.org/ (hosting for you)
* https://www.kuketz-blog.de/empfehlungsecke/
* https://curius.de/
* https://blog.while-true-do.io/security-physical-security/

#### Nitrokey

* [overview of usage szenarios](https://www.xmodulo.com/linux-security-with-nitrokey-usb-smart-card.html)
* [openPGP on your java smartcard (javacard)](https://github.com/ANSSI-FR/SmartPGP)

It is _not_ possible to recover the public key stored on nitro, see

* https://security.stackexchange.com/questions/45094/smart-card-gnupg-what-is-stored-in-my-keyring-how-to-adopt-smart-card
* https://gpgtools.tenderapp.com/kb/gpg-keychain-faq/keys-on-smart-card-not-shown-in-gpg-keychain

##### Nitrokey Pro GPG

* [GPA key generation](https://docs.nitrokey.com/pro/openpgp-keygen-gpa.html)
* GPG/openpgp
  + https://docs.nitrokey.com/de/pro/linux/openpgp.html
  + [key generation on card](https://docs.nitrokey.com/de/pro/openpgp-keygen-on-device.html)
  + [key backup](https://docs.nitrokey.com/de/pro/openpgp-keygen-backup.html)
* https://www.kuketz-blog.de/zwei-schluessel-fuer-alle-faelle-nitrokey-teil1/
  + https://www.kuketz-blog.de/gnupg-schluesselerstellung-und-smartcard-transfer-nitrokey-teil2/
  + https://www.kuketz-blog.de/gnupg-public-key-authentifizierung-nitrokey-teil3/
  + https://www.kuketz-blog.de/gnupg-e-mail-verschluesselung-unter-android-nitrokey-teil4/
* Thunderbird
  + https://decatec.de/it/thunderbird-78-pgp-verschluesselung-mit-dem-nitrokey-storage/
  + https://wiki.mozilla.org/Thunderbird:OpenPGP:Smartcards
  + https://docs.nitrokey.com/de/pro/linux/openpgp-thunderbird.html
* https://sorenpoulsen.com/securing-gnupg-keys-on-a-nitrokey-pro
  + https://sorenpoulsen.com/using-a-nitrokey-pro-from-another-computer

##### Nitrokey Pro S/MIME

* [smime](https://docs.nitrokey.com/de/pro/smime.html)
* [thunderbird](https://docs.nitrokey.com/de/pro/smime-thunderbird.html)

## Distributions

* [distrosea](https://distrosea.com/) Test drive Linux distros online in browser
* [distrochooser](https://distrochooser.de/) answer a few questions to find your distro

* https://getsol.us/home/ solus and solus budgie
  + https://ubuntubudgie.org/
* [Pop!_OS](https://pop.system76.com/)
  + [PopOS post install](https://mutschler.eu/linux/install-guides/pop-os-post-install/)
  + https://github.com/pop-os

### Firewall Distributions

* http://www.koozali.org/home/about (SME Server)

### Fedora

* https://docs.fedoraproject.org/en-US/Fedora/26/html/Release_Notes/sect-changes-for-developers.html
* http://dnf.readthedocs.io/en/latest/dnf-1_vs_dnf-2.html
* https://getfedora.org/atomic/

#### Fedora - steps after install

* [nvidia driver (rpms)](https://itsfoss.com/install-nvidia-drivers-fedora/)
* [nvidia-driver (direct)](https://www.if-not-true-then-false.com/2015/fedora-nvidia-guide/)
* [dnf fastest mirror](https://darryldias.me/2020/how-to-setup-fastest-mirror-in-dnf/)
* [fedora post install](https://mutschler.eu/linux/install-guides/fedora-post-install/)
* [Cisco openH264 firefox plugin](https://fedoraproject.org/wiki/OpenH264)
* [nvidia driver](https://www.if-not-true-then-false.com/2015/fedora-nvidia-guide/)
* [nvidia driver container toolkit](https://www.if-not-true-then-false.com/2020/install-nvidia-container-toolkit-on-fedora/)

#### Fedora third party repositories

* https://rpmfusion.org/FedoraThirdPartyRepos
* http://kde-redhat.sourceforge.net/
* https://fedoraproject.org/wiki/Third_party_repositories

#### dnf tipps and tricks

* https://linoxide.com/list-installed-packages-fedora/

## Container

* LXC
  + https://www.linux-community.de/ausgaben/linuxuser/2015/03/frisch-verpackt/
  + https://linuxcontainers.org/lxc/introduction/
* LXD
  + [incus](https://github.com/lxc/incus) LXD fork
* https://grapheneproject.io/ unikernel-like
  + https://github.com/oscarlab/graphene
* [gvisor](https://github.com/google/gvisor) gVisor is an application kernel, written in Go, that implements a substantial portion of the Linux system
* [flockport](https://www.flockport.com/)
* [orabuntu-lxc](https://sites.google.com/a/orabuntu-lxc.com/documentation/)
  + https://github.com/gstanden/orabuntu-lxc

### Container tools

* https://genuinetools.org/
  + https://github.com/genuinetools
* [quadlet]](https://github.com/containers/quadlet) running podman with systemd 
  + https://github.com/containers/quadlet/issues/12 currently no multi-container support
  + https://www.redhat.com/sysadmin/multi-container-application-podman-quadlet
* [build source image](https://github.com/containers/BuildSourceImage) Build a source code image from a collection of known .src.rpm's
* [udica](https://github.com/containers/udica) Generate SELinux policies for containers

### Desktop Container

* https://flatpak.github.io/xdg-desktop-portal/portal-docs.html
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
* docker for desktop
  + https://github.com/dockercask/dockercask (https://en.wikipedia.org/wiki/Xephyr based)
  + https://github.com/linuxserver / https://www.linuxserver.io/ (https://guacamole.apache.org/ and xrdp based)

### sandboxing and security containers

* [bubblewrap](https://github.com/containers/bubblewrap) (also contains a list of alternative containers)
* [sandstorm.io](https://sandstorm.io/) container for web apps
* [qm](https://github.com/containers/qm) environment which prevents applications and container tools from interfering with other processes
* [libkrun](https://github.com/containers/libkrun) dynamic library for running processes in a partially isolated environment using KVM Virtualization
* [sev-step](https://github.com/sev-step/sev-step) interactive single-stepping, page fault tracking and eviction set-based cache attacks available
  + https://www.amd.com/en/developer/sev.html

#### Opinion

* https://ludocode.com/blog/flatpak-is-not-the-future
* https://flatkill.org/2020/
* https://curius.de/2021/09/flatpak-snap-vs-paketverwaltung-alles-was-dazu-gesagt-werden-muss/#
* https://merlijn.sebrechts.be/blog/2020-07-03-snap-vs-flatpak/
* https://www.linux-community.de/ausgaben/linuxuser/2018/02/dreikampf/

#### Snappy / Snap

* https://snapcraft.io
* https://snapcraft.io/docs/build-on-docker
* https://github.com/williamjmorenor/docker-snapcraft-builder

#### flatpak

* https://flathub.org/home
* https://fishsoup.net/misc/fedora-docs-flatpak/flatpak/tutorial/
* https://docs.flatpak.org/en/latest/flatpak-builder-command-reference.html
* https://github.com/flatpak/flatpak-builder
* https://github.com/flatpak/flatpak-builder-tools
* http://janberan.tech/en/ (blog)

##### Build flatpak packages

* https://docs.flatpak.org/en/latest/first-build.html
* https://opensource.com/article/19/10/how-build-flatpak-packaging
* https://docs.fedoraproject.org/en-US/flatpak/tutorial/
* [flatpak from rpm](http://janberan.tech/2021/02/rpm2flatpak/)
  + http://janberan.tech/en/2021/02/devconf-making-fedora-flatpaks-from-rpms/
* [official flatpak package build files](https://github.com/flathub)

### Container-faced Linux Distributions (mostly immutable)

* [qubes](https://www.qubes-os.org/) - most apps in it's own xen VM - super secure
* [mocaccino - docker and luet based](https://www.mocaccino.org/)
* [suse microos](https://microos.opensuse.org/) - suse's coreos (includes kubic)
  + https://en.opensuse.org/Portal:MicroOS/Downloads
* [flatcar linux](https://www.flatcar-linux.org/) - community successor of coreos
* [rlxos - immutable desktop](https://rlxos.dev/)
  + https://tylerstech.me/2021/06/23/rlxos-a-new-and-unique-distribution/
* [AWS Bottlerocket](https://aws.amazon.com/de/bottlerocket/)
  + [bottlerocket nvidia support](https://aws.amazon.com/de/about-aws/whats-new/2022/03/bottlerocket-support-gpu-ec2-instance-types-powered-by-nvidia/)
  + https://aws.amazon.com/de/about-aws/whats-new/2022/06/bottlerocket-ecs-variant-nvidia-gpus/
  + https://aws.amazon.com/de/blogs/containers/announcing-nvidia-gpu-support-for-bottlerocket-on-amazon-ecs/
  + https://github.com/bottlerocket-os/bottlerocket

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
* [kernel args](https://docs.fedoraproject.org/en-US/fedora-coreos/kernel-args/)
  + [control group v2](https://www.kernel.org/doc/html/latest/admin-guide/cgroup-v2.html)
* [example with firewall](https://www.portainer.io/blog/from-zero-to-production-with-fedora-coreos-portainer-and-wordpress-in-7-easy-steps)
* [add user manually](https://github.com/endocode/coreos-docs/blob/master/os/adding-users.md) is this really true/relevant

##### Based on Fedora CoreOS

* [Fedora CoreOS reboot coordinator for Kubernetes](https://github.com/poseidon/fleetlock)
* https://dustymabe.com/2020/04/04/automating-a-custom-install-of-fedora-coreos/

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
* [systemd.service attributes](https://www.freedesktop.org/software/systemd/man/latest/systemd.service.html)
  + [forking and oneshot](https://serverfault.com/questions/713680/is-there-a-way-to-make-systemctl-start-synchronous)
* [systemd.timer units](https://wiki.ubuntuusers.de/systemd/Timer_Units/)
  + [systemd.timer attributes](https://www.freedesktop.org/software/systemd/man/latest/systemd.timer.html#AccuracySec=)
* [timers](https://wiki.archlinux.de/title/Systemd/Timers) alternative to crond
* [list failed units](https://www.cyberciti.biz/faq/systemd-systemctl-list-all-failed-units-services-on-linux/)

### alternatives to systemd

* [dinit](https://github.com/davmac314/dinit)

### systemd and fs

* [reload on fstab](https://unix.stackexchange.com/questions/477794/how-to-force-os-reload-of-fstab/577321)
* `/etc/rc.d/rc.local` will be automatically executed (when x flag on file is set): https://www.cyberciti.biz/faq/how-to-enable-rc-local-shell-script-on-systemd-while-booting-linux-system/
* [get rid of rc.local](https://unix.stackexchange.com/questions/471824/what-is-the-correct-substitute-for-rc-local-in-systemd-instead-of-re-creating-rc)

# Huge pages 

* https://wiki.debian.org/Hugepages
* https://access.redhat.com/documentation/de-de/openshift_container_platform/4.6/html/scalability_and_performance/what-huge-pages-do-and-how-they-are-consumed
* https://kubernetes.io/docs/tasks/manage-hugepages/scheduling-hugepages/ in kubernetes
* https://access.redhat.com/solutions/46111

## Linux package systems

* [rpm - file and related packages](https://linux-audit.com/determine-file-and-related-package/)
* https://nixos.org/ - functional, user-centric package tool
* [luet - docker based image packages](https://luet-lab.github.io/docs/)
  + https://luet-lab.github.io/docs/docs/concepts/packages/

## Linux package build

* https://wiki.archlinux.org/title/Creating_packages_for_other_distributions
* https://www.redhat.com/sysadmin/create-rpm-package

### Cross-linux

* [basics](https://www.artificialworlds.net/blog/2007/02/22/creating-deb-and-rpm-packages/)
* [pacur](https://github.com/pacur/pacur) (docker-based)
* [fpm](https://github.com/jordansissel/fpm)
  + https://fpm.readthedocs.io/en/v1.13.1/changelog.html
  + https://www.digitalocean.com/community/tutorials/how-to-use-fpm-to-easily-create-packages-in-multiple-formats
  + https://fpm.readthedocs.io/en/latest/intro.html
  + https://opensource.com/article/18/9/how-build-rpm-packages
* [debbuild](https://github.com/debbuild/debbuild) Build deb packages from rpm specifications 


### RPM

* [basics 1](https://documentation.suse.com/sbp/all/single-html/SBP-RPM-Packaging/index.html)
* [basics 2](https://opensource.com/article/18/9/how-build-rpm-packages)
* [RPM packaging](https://developer.fedoraproject.org/deployment/rpm/about.html)

#### build RPMs in container (docker)

* [build kernel RPMs in container](https://some-natalie.dev/blog/container-bulid-rpms/)
* [ci/cd framework for RPMs with docker](http://saule1508.github.io/build-rpm-with-docker/)

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

## Terminal

### Terminal colors

* https://opensource.com/article/19/9/linux-terminal-colors

## Firmware update

* [fwupdmgr](https://itsfoss.com/update-firmware-ubuntu/)

## Linux Power Management

* [powertop with systemd](https://wiki.archlinux.org/title/powertop)
* [alternatives to powertop](https://getalternative.net/software/powertop)
* [tools to measure power consumption](https://luiscruz.github.io/2021/07/20/measuring-energy.html)
* [likwid](https://hpc.fau.de/research/tools/likwid/)
  + https://github.com/RRZE-HPC/likwid

## Linux Desktop Environments

### Plasma KDE

see kde-desktop.md
