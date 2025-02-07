# DNS

## DNS record types

* https://en.wikipedia.org/wiki/List_of_DNS_record_types

### CNAME (alias)

A "canonical name" (CNAME) record points from an alias domain to a "canonical" domain. A CNAME record is used in lieu of an A record, when a domain or subdomain is an alias of another domain. All CNAME records must point to a domain, never to an IP address. 

* https://www.cloudflare.com/learning/dns/dns-records/dns-cname-record/

### TXT

The DNS ‘text’ (TXT) record lets a domain administrator enter text into the Domain Name System (DNS). Text is stored in the form of one or more strings within quotation marks. The TXT record was originally intended as a place for human-readable notes. However, now it is also possible to put some machine-readable data into TXT records. One domain can have many TXT records.

* https://www.cloudflare.com/learning/dns/dns-records/dns-txt-record/

### SRV (service)

The DNS "service" (SRV) record specifies a host and port for specific services such as voice over IP (VoIP), instant messaging, and so on. Most other DNS records only specify a server or an IP address, but SRV records include a port at that IP address as well. Some Internet protocols require the use of SRV records in order to function.

* https://www.cloudflare.com/learning/dns/dns-records/dns-srv-record/

### DS (DNSSEC)

DS records (Delegation Signer) are used to secure delegations (DNSSEC). A DS record with the name of the sub-delegated zone is placed in the parent zone along with the delegating NS Records. This DS record references a DNSKEY record in the sub-delegated zone.

* https://www.cloudns.net/wiki/article/365/

### TLSA (TLS)

The TLS Authentication record (TLSA) is used to associate a TLS server certificate or public key with the domain name where the record is found. With a TLSA record, you can store the fingerprint of a TLS/SSL certificate in the DNS of your domain.

* https://www.cloudns.net/wiki/article/342/
* https://www.security-insider.de/was-ist-ein-tlsa-record-a-875698/

### CAA (TLS)

CAA is a type of DNS record that allows site owners to specify which Certificate Authorities (CAs) are allowed to issue certificates containing their domain names.

* https://letsencrypt.org/docs/caa/
* https://snapshot.internetx.com/en/what-is-a-caa-record-information-tips/

### SSHFP (ssh)

The SSHFP record contains fingerprints for public keys, used for Secure Shell (SSH). The SSHFP record is usually used with DNSSEC enabled domains.

* https://www.cloudns.net/wiki/article/27/
* https://en.wikipedia.org/wiki/SSHFP_record

### SMIMEA (mail)

SMIMEA messages often contain a certificate (some messages contain more than one certificate). These certificates assist in authenticating the sender of the message and can be used for encrypting messages that will be sent in reply. In order for the SMIME receiver to authenticate that a message is from the sender identified in the message, the receiver's Mail User Agent (MUA) must validate that this certificate is associated with the purported sender. 

* https://www.cloudns.net/wiki/article/386/
* https://www.core-networks.de/faq/smimea.html

### OPENPGPKEY (mail)

OpenPGP public keys are used to encrypt or sign email messages and files. To encrypt an email message, or verify a sender's OpenPGP signature, the email client Mail User Agent (MUA) or the email server Mail Transfer Agent (MTA) needs to locate the recipient's OpenPGP public key.

* https://www.cloudns.net/wiki/article/382/
* https://www.core-networks.de/faq/dnssec-openpgpkey.html


