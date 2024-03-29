# virtualization

## Vagrant

* https://github.com/jedi4ever/veewee

## host/dom0 networking

* https://www.cyberciti.biz/faq/how-to-add-network-bridge-with-nmcli-networkmanager-on-linux/

## kvm, qemu, libvirt

* https://virt-manager.org/
* [gnome-boxes](https://help.gnome.org/users/gnome-boxes/stable/)
* https://libvirt.org/
* https://github.com/quickemu-project/quickemu
* [cloud hypervisor](https://www.cloudhypervisor.org/) an alternative to kvm/qemu in rust

### networking

* https://wiki.libvirt.org/page/Networking
* network modes
  + [NAT](https://fabianlee.org/2019/05/26/kvm-creating-a-guest-vm-on-a-nat-network/)
  + [bridged](https://fabianlee.org/2019/04/01/kvm-creating-a-bridged-network-with-netplan-on-ubuntu-bionic/)
  + [routed](https://fabianlee.org/2019/06/05/kvm-creating-a-guest-vm-on-a-network-in-routed-mode/)

### Console

* https://fadeevab.com/how-to-setup-qemu-output-to-console-and-automate-using-shell-script/

### Network

* https://wiki.libvirt.org/page/VirtualNetworking
* https://dustymabe.com/2019/01/04/easy-pxe-boot-testing-with-only-http-using-ipxe-and-libvirt/
  + https://de.wikipedia.org/wiki/Preboot_Execution_Environment

### Graphics

* https://linux-blog.anracom.com/2017/04/06/kvm-video-qxl-und-video-virtio-video-aufloesung-eines-debian-8-gastes-mit-gnome-desktop-einstellen/

## VM images

* [vmbuilder](https://launchpad.net/vmbuilder) Install virtual machines in a snap without ever actually booting a virtual machine
  + https://wiki.debian.org/VMBuilder

# Datacenter software (aka hardware provisioning)

* [rebar](https://rebar.digital/)
  + https://provision.readthedocs.io/en/latest/README.html
* https://ovirt.org/


# microVM

* https://katacontainers.io/ - light as container - secure as virtualization
  + https://github.com/kata-containers
  + https://www.ionos.de/digitalguide/server/knowhow/kata-containers-vorgestellt/
  + https://www.linux-magazin.de/ausgaben/2018/12/kata-containers/
* [krunvm](https://github.com/containers/krunvm) use docker/oci container images on KVM virtualization
* [SmartOS](https://www.joyent.com/smartos) solaris-kernel-based container OS
  + https://en.m.wikipedia.org/wiki/SmartOS
  + https://pkgsrc.joyent.com/

## Light Hypervisors

* https://github.com/cloud-hypervisor/cloud-hypervisor
* https://firecracker-microvm.github.io/

# Unikernels

* [big overview and benchmark](https://github.com/cetic/unikernels) featured
* http://unikernel.org/
  + http://unikernel.org/projects/
* https://github.com/Solo5/solo5 hardware virtualized tender

## Middleware

* https://github.com/solo-io/unik A platform for automating unikernel & MicroVM compilation and deployment
  + https://github.com/solo-io/unik/blob/master/docs/getting_started_java.md

## Implementations

* http://osv.io/ OSv is the versatile modular unikernel designed to run unmodified Linux applications securely on micro-VMs in the cloud. 
  + http://blog.osv.io/blog/2019/04/19/making-OSv-run-on-firecraker/
* https://mirage.io/ ocaml
* https://github.com/solo-io/unik meta-build for unikernels
* [eggOS - unikernel for golang](https://github.com/icexin/eggos)
  + https://golangexample.com/a-go-unikernel-running-on-x86-bare-metal/

# Windows - Hyper-V

* [vmplex](https://github.com/0xf005ba11/vmplex-ws) open source ui for hyper-v
* [enable hyper-v](https://techcommunity.microsoft.com/t5/educator-developer-blog/step-by-step-enabling-hyper-v-for-use-on-windows-11/ba-p/3745905)
  + [hyper-v aktivieren](https://www.netzwelt.de/anleitung/198230-windows-11-home-pro-hyper-v-installieren-aktivierenso-gehts.html)

# Linux

* [osboxes](https://www.osboxes.org/) Simply download any image you want and run it as VM
