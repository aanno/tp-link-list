# network bound disk encryption (NBDE)

## clevis setup

```bash
# test
echo test | clevis encrypt tang '{"url":"http://unke.fritz.box"}' -y | clevis decrypt

echo hi | clevis encrypt tang '{"url": "http://unke.fritz.box"}' > hi.jwe

# use uuid of /etc/crypttab

blkid --uuid 55144238-eeaa-4e47-b256-7729d9973f80 
/dev/nvme0n1p3

# bind luks to clevis

clevis luks bind -d /dev/nvme0n1p3 tang '{"url":"http://unke.fritz.box"}'
Enter existing LUKS password: 
The advertisement contains the following signing keys:

XRcJm_4qkTeG9Q_Xw5fuWkfsVUiZjuOdpg2AM26xSoY

Do you wish to trust these keys? [ynYN] y


# nbde on boot
dnf install clevis-dracut

# edit and add the following line
# hostonly_cmdline=yes
nano /etc/dracut.conf.d/clevis.conf

# regenerate initrd
dracut -fv --regenerate-all
 
# ensure that kernel cmdline waits for networking
grubby --update-kernel=ALL --args="rd.neednet=1" 

```

References:
* [clevis](https://github.com/latchset/clevis)
* https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/8/html/security_hardening/configuring-automated-unlocking-of-encrypted-volumes-using-policy-based-decryption_security-hardening

### clevis setup remarks

* This howto has used http://unke.local before, however using http://unke.fritz.box seems to be more stable

```bash
```

```bash
```

