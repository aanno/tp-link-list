# VPN

* [anonymiser/vpn blog](https://www.bitblokes.de/tag/vpn/)
* [anonymise selective](https://github.com/jamesmcm/vopono)
* [multi-protocol anonymiser](https://github.com/StreisandEffect/streisand)

## VPN implementations

* [lightway](https://github.com/expressvpn/lightway-core) open source VPN used by https://www.expressvpn.com

## VPN Services

* https://www.expressvpn.com
  + https://www.heise.de/news/ExpressVPN-veroeffentlicht-eigenes-VPN-Protokoll-Lightway-als-Open-Source-6163749.html
* https://netbird.io/ wireguard based
  + https://app.netbird.io/install
  + https://github.com/netbirdio/netbird
* https://tailscale.com/ wireguard based
* https://lnvpn.net/ wireguard based - crypto (lightning) paid
  + https://github.com/LightRider5/lnvpn
* [IVPN](https://www.ivpn.net/pricing/) own protocol, many pay methods, including 
  Credit Card, PayPal, Bitcoin, Bitcoin Lightning, Monero, Cash (Coin)

## Wireguard

* https://www.wireguard.com/
  + https://fedoramagazine.org/build-a-virtual-private-network-with-wireguard/
  + https://www.wireguard.com/netns/
* https://github.com/pirate/wireguard-docs
* [wireguard on fcos](https://docs.fedoraproject.org/en-US/fedora-coreos/sysconfig-configure-wireguard/)
* https://www.stavros.io/posts/how-to-configure-wireguard/
  + https://github.com/Nyr/wireguard-install
* docker
  + https://github.com/cmulk/wireguard-docker
* wireguard with AWS
  + https://xalitech.com/wireguard-vpn-server-on-aws-lightsail/
  + https://www.jdieter.net/posts/2020/05/31/multi-region-vpn-aws/
  + https://m.habr.com/en/post/449234/
* [wireguard and iptables](https://www.cyberciti.biz/faq/how-to-set-up-wireguard-firewall-rules-in-linux/)
* [mistborn - self-hosted anonymiser (including nextcloud)](https://gitlab.com/cyber5k/mistborn) wireguard based anonymiser and platform
  + https://gitlab.com/cyber5k/mistborn/-/wikis/Mistborn-Network-Security
  + https://cyber5k.com/
  + https://www.mistborn.cloud/impressionen/
  + https://www.buymeacoffee.com/cyber5k
* [wireguard installer](https://github.com/angristan/wireguard-install) for VPN internet access
* [wg-easy](https://github.com/wg-easy/wg-easy)

### wg LAN-to-LAN

* https://cosmicpercolator.com/2020/04/06/lan-to-lan-vpn-using-wireguard/
* https://www.flockport.com/guides/build-wireguard-networks
* [firezone](https://github.com/firezone/firezone) admin several LAN-to-LAN customers

### Wireguard helpers

* [code warrior setup](https://emanuelduss.ch/2018/09/wireguard-vpn-road-warrior-setup/)
* [wireguard install](https://github.com/angristan/wireguard-install)
* [wireguard ansible role](https://github.com/githubixx/ansible-role-wireguard)
* [another wireguard ansible role](https://github.com/mawalu/wireguard-private-networking)
* [wireguard meshconf](https://github.com/k4yt3x/wg-meshconf)
* [wesher](https://github.com/costela/wesher) mesh-over-wg
* [wireguard manager](https://github.com/complexorganizations/wireguard-manager)
* [top wg projects](https://awesomeopensource.com/projects/wireguard)

### Wireguard UIs

* [wireguard ui](https://github.com/ngoduykhanh/wireguard-ui) includes docker image
* [wg ui](https://github.com/EmbarkStudios/wg-ui)
* [subspace (old)](https://github.com/subspacecloud/subspace)

#### Wireguard Easy UI, featured!

* [wg-easy](https://github.com/WeeJeWel/wg-easy)
  + [wg-easy with podman](https://github.com/wg-easy/wg-easy/wiki/Using-WireGuard-Easy-with-Podman)
  + [wg-easy with nginx SSL](https://github.com/wg-easy/wg-easy/wiki/Using-WireGuard-Easy-with-nginx-SSL)
  + [wg-easy with podman kube](https://github.com/wg-easy/wg-easy/wiki/Using-WireGuard-Easy-with-rootless-Podman-(incl.-Kubernetes-yaml-file-generation))
  + [wg-easy with pi-hole](https://github.com/wg-easy/wg-easy/wiki/Using-WireGuard-Easy-with-Pi-Hole)
* [gnulinux on wg-easy](https://gnulinux.ch/schnell-zum-eigenen-vpn-server-mit-wireguard-easy)

Problems

* [wg-easy does not support IPv6](https://github.com/wg-easy/wg-easy/issues/138)
* [wg-easy right/cap problems with podman](https://github.com/containers/podman/issues/15120) problems to load kernel modules from within podman
  + [work-around: preload needed modules](https://github.com/hasan4791/x-servers/blob/main/ansible/roles/setup-instance/templates/x-server-modules.conf.j2)

### Wireguard tunnels

* [titun](https://github.com/sopium/titun)
* [GRPC server for managing wireguard tunnels](https://github.com/stellarproject/guard)
* [tailscale (commercial)](https://github.com/tailscale/tailscale)
