# DNS

## trusted servers

* https://www.privacy-handbuch.de/handbuch_93d.htm
* https://wiki.ipfire.org/dns/public-servers
* https://github.com/DNSCrypt/dnscrypt-resolvers
* https://quad9.net/

## Standard Linux Configuration

* [systemd-resolved](https://wiki.archlinux.org/index.php/Systemd-resolved)
  + https://geekflare.com/de/linux-server-local-dns-caching/
  + https://medium.com/@niktrix/getting-rid-of-systemd-resolved-consuming-port-53-605f0234f32f
  + https://sites.google.com/site/nandydandyoracle/orabuntu-lxc/using-systemd-resolved-in-a-networkmanager-environment
  + https://wiki.archlinux.org/index.php/Systemd#Diagnosing_a_service
  + https://www.freedesktop.org/software/systemd/man/systemd-resolved.service.html
* [resolvconf](https://wiki.archlinux.org/index.php/Openresolv)

### Split resolved

* https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html/configuring_and_managing_networking/using-different-dns-servers-for-different-domains_configuring-and-managing-networking
* https://fedoramagazine.org/systemd-resolved-introduction-to-split-dns/

## Overviews and Problems

* [DNS overview german](https://www.privacy-handbuch.de/handbuch_93.htm)
* [DNSCrypt](https://dnscrypt.info/faq/)
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

### dnscrypt-proxy

* https://github.com/DNSCrypt/dnscrypt-proxy
* https://github.com/F1ash/dnscrypt-proxy-gui
* [adblocker with dnscrypt-proxy](https://www.cyberciti.biz/faq/how-to-install-dnscrypt-proxy-with-adblocker-on-linux/)
* https://0x1.gitlab.io/security/Dnscrypt-Proxy-Gui/

## Testing and tools

* [dnslookup](https://github.com/ameshkov/dnslookup)
* [dnscrypt (tool)](https://github.com/ameshkov/dnscrypt) server and client and tool
* [dog](https://dns.lookup.dog/)
  + https://github.com/ogham/dog

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
