# DNS

## Change DNS

* [change DNS on windows](https://www.tenforums.com/tutorials/77444-change-ipv4-ipv6-dns-server-address-windows.html) includes trusted and filtering servers

## trusted servers

* https://www.privacy-handbuch.de/handbuch_93d.htm
* https://wiki.ipfire.org/dns/public-servers
* https://github.com/DNSCrypt/dnscrypt-resolvers
* https://quad9.net/
* https://one.one.one.one/help/ with testpage
* https://res3.digitale-gesellschaft.ch/
* https://ffmuc.net/wiki/doku.php?id=knb:dohdot freifunk muc

## trusted filtering servers

* https://my.nextdns.io/login semi-commercial

## online test services

* [check my DNS](https://cmdns.dev.dns-oarc.net/)

## Standard Linux Configuration

If systemd-resolved is used `/etc/resolv.conf` is a link:

```bash
$ ls -l /etc/resolv.conf 
lrwxrwxrwx. 1 root root 37  1. Apr 14:12 /etc/resolv.conf -> /run/systemd/resolve/stub-resolv.conf
```

It is _not_ recommended to replace this file when using systemd-resolved _at all_. 
systemd-resolved is _not_ suited on machines were you run an 'real' DNS server (turn it off in this case).

NetworkManager could manage /etc/resolv.conf as well.

* [systemd-resolved](https://wiki.archlinux.org/index.php/Systemd-resolved)
  + https://geekflare.com/de/linux-server-local-dns-caching/
  + https://medium.com/@niktrix/getting-rid-of-systemd-resolved-consuming-port-53-605f0234f32f
  + https://sites.google.com/site/nandydandyoracle/orabuntu-lxc/using-systemd-resolved-in-a-networkmanager-environment
  + https://wiki.archlinux.org/index.php/Systemd#Diagnosing_a_service
  + https://www.freedesktop.org/software/systemd/man/systemd-resolved.service.html
  + https://gbe0.com/posts/linux/systemd-resolved-setup/
  + https://wiki.ubuntuusers.de/systemd/systemd-resolved/
* `resolvectl`
* [systemd-resolved vs NetworkManager](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/configuring_and_managing_networking/manually-configuring-the-etc-resolv-conf-file_configuring-and-managing-networking)
* [resolvconf](https://wiki.archlinux.org/index.php/Openresolv)

### Split resolved

* https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/configuring_and_managing_networking/using-different-dns-servers-for-different-domains_configuring-and-managing-networking
* https://fedoramagazine.org/systemd-resolved-introduction-to-split-dns/
* https://blogs.gnome.org/mcatanzaro/2020/12/17/understanding-systemd-resolved-split-dns-and-vpn-configuration/
* https://fedoramagazine.org/systemd-resolved-introduction-to-split-dns/

## Overviews and Problems

* [DNS overview german](https://www.privacy-handbuch.de/handbuch_93.htm)
* [DNSCrypt](https://dnscrypt.info/faq/) old
* [anomyized DNS](https://github.com/DNSCrypt/dnscrypt-proxy/wiki/Anonymized-DNS)
* [client side dns api](https://www.getdnsapi.net/) (with node bindings)
* [stubby - dns stub resolver](https://dnsprivacy.org/wiki/display/DP/DNS+Privacy+Daemon+-+Stubby)
* https://dnsprivacy.org/wiki/

## Implementations

* https://dnscrypt.info/implementations/
* [dnsproxy](https://github.com/AdguardTeam/dnsproxy)
* [unbound](https://www.nlnetlabs.nl/projects/unbound/about/)
* [nginx as dns-over-tls](https://www.linuxbabe.com/ubuntu/dns-over-tls-resolver-nginx)
* [nginx and unbound](https://www.englert.one/dot-dns-over-tls-server-einrichten)
* [fdns](https://firejaildns.wordpress.com/) an alternative encrypted DNS for small networks
* [SmartDNS](https://pymumu.github.io/smartdns/en/) DoT (DNS over TLS), DoH (DNS over HTTPS)

### dnscrypt-proxy

* https://github.com/DNSCrypt/dnscrypt-proxy includes http/socks5 proxy
  + https://wiki.kairaven.de/open/zensurfilter/azensur_dns
  + https://wiki.archlinux.org/title/Dnscrypt-proxy
* https://github.com/F1ash/dnscrypt-proxy-gui
* [adblocker with dnscrypt-proxy](https://www.cyberciti.biz/faq/how-to-install-dnscrypt-proxy-with-adblocker-on-linux/)
* https://0x1.gitlab.io/security/Dnscrypt-Proxy-Gui/

## Testing and tools

* [dnslookup](https://github.com/ameshkov/dnslookup)
* [dnscrypt (tool)](https://github.com/ameshkov/dnscrypt) server and client and tool
  + [dnscrypt server as docker image](https://github.com/DNSCrypt/dnscrypt-server-docker)
  + [dnscrypt server](https://github.com/DNSCrypt/encrypted-dns-server) rust
* [dog](https://dns.lookup.dog/)
  + https://github.com/ogham/dog

## DNS changer software

* [dnsChanger-desktop](https://github.com/DnsChanger/dnsChanger-desktop) win, osx, linux

### DNS and Mail

* https://www.pep.security/de/
* [alternative to pep - based on SMIMEA DNS record](https://github.com/grierforensics/Great-DANE-Engine)
* [support for DNSSEC/DANE/TLSA validation in thunderbird](https://bugzilla.mozilla.org/show_bug.cgi?id=1479423)


#### Main Hardening

* https://www.nettask.de/de/loesungen/dehosted-exchange/e-mail-sicherheit-mit-dmarc-dkim-spf-dane.html
* https://www.mailhardener.com/kb/email-hardening-guide
* [part 1 - SPF](https://www.quorumcyber.com/about/insights/email-security-hardening-part-1-the-sender-policy-framework-spf/)
* [part 2 - DKIM](https://www.quorumcyber.com/about/insights/email-security-hardening-part-two-domainkeys-identified-mail-dkim/)
* [part 3 - DMARC](https://www.quorumcyber.com/about/insights/email-security-hardening-part-3-domain-based-message-authentication-reporting-and-conformance-dmarc/)
* [part 4 - mail flow](https://www.quorumcyber.com/about/insights/email-security-hardening-part-4-mail-flow-rules/)
* DANE/TLSA
  + https://de.wikipedia.org/wiki/DNS-based_Authentication_of_Named_Entities
  + https://www.security-insider.de/mit-dane-kommen-e-mails-beim-richtigen-empfaenger-an-a-853647/
* DKIM
  + https://de.wikipedia.org/wiki/DomainKeys
  + https://www.ionos.de/digitalguide/e-mail/e-mail-sicherheit/dkim-domainkeys/
* DMARC
  + https://beaglesecurity.com/blog/article/dmarc-security.html

## DNSSEC

DNSSEC is used _between_ DNS servers but has failed to spread to 'DNS consumer' clients.
For clients, the world now counts on DNS-over-TLS and DNS-over-HTTPS (but both only for browser at present).

* [How to test and validate DNSSEC using dig command line](https://www.cyberciti.biz/faq/unix-linux-test-and-validate-dnssec-using-dig-command-line/)

* [online DNSSEC resolver test](https://wander.science/projects/dns/dnssec-resolver-test/) should fail, as client support is not present
* [DNSSEC check](https://dnssec-tools.org/wiki/DNSSEC-Check.html)
* [DNSSEC tools](https://github.com/DNSSEC-Tools/DNSSEC-Tools)

## What is my ip address

* https://myip.expert/
* https://whatismyipaddress.com/

## BGP

### RPKI

* [RPKI - The required cryptographic upgrade to BGP routing](https://blog.cloudflare.com/rpki)
* [RPKI and the DNS](https://www.sidnlabs.nl/en/news-and-blogs/rpki-and-the-dns-role-of-big-players-is-crucial)
* https://www.ripe.net/manage-ips-and-asns/resource-management/rpki/

#### RPKI software

* [RPKI software](https://www.rpki-client.org/)
