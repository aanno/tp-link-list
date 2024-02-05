# rclone 

* [filter, include, exclude](https://rclone.org/filtering/)
* [fuse mount](https://rclone.org/commands/rclone_mount/)
* [web ui](https://rclone.org/gui/)
* https://github.com/rclone/rclone

## Config

```bash
rclone config 
```
Config is stored at

```bash
$ cat ~/.config/rclone/rclone.conf 
[wasabi-breitbandig]
type = s3
provider = Wasabi
env_auth = true
access_key_id = <id>
secret_access_key = <key>
endpoint = s3.eu-central-2.wasabisys.com
acl = eu-central-21
```

* [rclone wasabi config](https://wasabi-support.zendesk.com/hc/en-us/articles/115001600252-How-do-I-use-Rclone-with-Wasabi-)

## Examples

filtered list of files in bucket 'b-breitbandig':
```bash
rclone lsf 'wasabi-breitbandig:b-breitbandig' --include="b-2023*" --files-only
```

(fuse) mount cloud storage as files:
```bash
rclone mount 'wasabi-list-only:b-breitbandig' ./mnt
```
For this, you need at least access to metadata (e.g. p-list-only _and_ WasabiReadOnlyAccess). This is _extremely_ slow.

Use web ui:
```bash
rclone rcd --rc-web-gui
# opens http://127.0.0.1:5572/#/dashboard in browser
```
This is _very_ slow.

```bash
```

```bash
```
