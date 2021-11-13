# TLS/HTTPS


## key management

* [cert-manager - manage X.509 server on kubernetes](https://cert-manager.io/)
* [xca - tool for key management](https://www.hohnstaedt.de/xca/index.php/documentation/manual)
  + https://github.com/chris2511/xca/

## Let's encrypt

### ACME

* https://github.com/shred/acme4j

#### ACME Server

* https://blog.sean-wright.com/self-host-acme-server/
* [ACME support in cert-manager](https://cert-manager.io/docs/configuration/acme/)
* [ACME proxy for other cert server](https://github.com/grindsa/acme2certifier)
  + http://testrfc7030.com/ EST test server
  + https://github.com/grindsa/acme2certifier/blob/master/docs/cmp.md - cmp v2 (aka openssl)

#### ACME for email certs

* [rfc8823 - rfc for email ACME](https://datatracker.ietf.org/doc/rfc8823/)
* [acme4j contains an client implementation](https://shredzone.org/maven/acme4j/challenge/email-reply-00.html)

### DNSRoboCert

* https://github.com/adferrand/dnsrobocert
  + https://medium.com/@MicroPyramid/letsencrypt-wildcard-setup-wildcard-subdomain-using-letsencrypt-and-certbot-97ffb17414dd
  + https://dnsrobocert.readthedocs.io/en/latest/user_guide.html#running-as-a-docker-container
  + https://dnsrobocert.readthedocs.io/en/latest/providers_options.html#netcup

## Weiter freie Services

* https://adminforge.de/services/#wekan
