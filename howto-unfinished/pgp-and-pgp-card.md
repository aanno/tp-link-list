# pgp and openpgp card

## openpgp card

### test signing (valid for cards as well as 'normal' keys)

echo "test" | sq sign --signer 1A4399EAEE70448FCFEE7DEF4B9446F7A2191EF5 --message -
echo "test" | gpg-sq -a --sign -u 1A4399EAEE70448FCFEE7DEF4B9446F7A2191EF5
echo "test" | gpg -a --sign -u 1A4399EAEE70448FCFEE7DEF4B9446F7A2191EF5

### openpgp-card-tools (oct)

* https://codeberg.org/openpgp-card/openpgp-card-tools
* [Support RFC 9580 / OpenPGP v6](https://codeberg.org/openpgp-card/openpgp-card-tools/issues/99)

### thunderbird

#### using card by external gpg

* https://docs.nitrokey.com/de/nitrokeys/features/openpgp-card/openpgp-thunderbird
  only referer
* https://decatec.de/it/thunderbird-78-pgp-verschluesselung-mit-dem-nitrokey-storage/
  german howto
* https://wiki.mozilla.org/Thunderbird:OpenPGP:Smartcards

#### replace RNP with Sequoia

* https://gitlab.com/sequoia-pgp/sequoia-octopus-librnp
  includes ready-made packages for fedora and suse
* https://github.com/sequoia-pgp

The switch will _not_ use the 'normal' `sq` keyring and it will _not_ use the old keyring!
Hence consider a backup of your certs and keys.

Fedora:

sudo dnf swap thunderbird-librnp-rnp sequoia-octopus-librnp

Currently does not work because:

* https://gitlab.com/sequoia-pgp/sequoia-octopus-librnp/-/work_items/117

