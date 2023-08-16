# rclone 

* [filter, include, exclude](https://rclone.org/filtering/)

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

```bash
rclone lsf 'wasabi-breitbandig:b-breitbandig' --include="b-2023*" --files-only
```

```bash
```

```bash
```

```bash
```
