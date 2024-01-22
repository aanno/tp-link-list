# Mariadb Howto

## After install

```bash
$ mariadb-secure-installation 
```

## Create DB

```sql
CREATE DATABASE db1;
```

## List DBs

```sql
SHOW DATABASES;
```

## List users

```sql
SELECT User FROM mysql.user;
```

## Alter user password

```sql
ALTER USER 'root'@'localhost' IDENTIFIED BY 'MyN3wP4ssw0rd';
flush privileges;
```

## Create user

```sql
CREATE USER 'matthew'@'%' IDENTIFIED BY 'supersecretpassword';
/* GRANT priv_type ON priv_level TO 'username'@'hostname'; */
GRANT ALL PRIVILEGES ON * . * TO 'matthew'@'%';
FLUSH PRIVILEGES;
```

## Backup and Restore

Backup:

```bash
mariadb-dump --single-transaction --default-character-set=utf8mb4 -h [server] -u [username] -p[password] [db_name] > nextcloud-sqlbkp_`date +"%Y%m%d"`.bak
```

* depending on the engine, you need `--lock-tables` instead of `--single-transaction`
* perhaps you also need `--routines --triggers --events --compress` ?
* if you want to backup all-in-one: `--all-databases`

## Restore

```bash
mysql -h [server] -u [username] -p[password] [db_name] < nextcloud-sqlbkp.bak
```

### Backup and Restore References

* https://docs.nextcloud.com/server/latest/admin_manual/maintenance/backup.html featured!
* https://docs.nextcloud.com/server/latest/admin_manual/maintenance/restore.html
* https://mariadb.com/kb/en/making-backups-with-mariadb-dump/
* https://mariadb.com/kb/en/backup-and-restore-overview/
* https://dba.stackexchange.com/questions/19532/safest-way-to-perform-mysqldump-on-a-live-system-with-active-reads-and-writes
* https://stackoverflow.com/questions/49379538/how-take-mysqldump-with-utf8
* https://mariadb.com/kb/en/mariadb-dump/ (ref for mariadb-dump)
* https://mariadb.com/kb/en/restoring-data-from-dump-files/
* [physical backup](https://mariadb.com/kb/en/full-backup-and-restore-with-mariabackup/) _not_ recommended

## Character Sets and Collations

* https://mariadb.com/kb/en/setting-character-sets-and-collations/

## Container (docker, podman)

### use external DB files

```bash
#!/bin/bash -x
# https://hub.docker.com/_/mariadb

podman rm -f mariadb || true

podman run --name mariadb \
  -v ./var/lib/mysql:/var/lib/mysql:z \
  -v ./backup:/backup:z \
  -p 3306:3306 \
  -e MARIADB_ROOT_PASSWORD=<whatever> \
  -it \
  mariadb:11.1 \
  bash

# -d \
# -h192.168.10.137
# --database digikam

# podman exec -it mariadb bash

podman logs mariadb

```

## References

* [create DB](https://mariadb.com/kb/en/create-database/)
* [reset root password](https://www.digitalocean.com/community/tutorials/how-to-reset-your-mysql-or-mariadb-root-password)
* [create user](https://www.beekeeperstudio.io/blog/how-to-create-a-user-in-mariadb)
  + [official create user](https://mariadb.com/kb/en/create-user/)
  + https://phoenixnap.com/kb/how-to-create-mariadb-user-grant-privileges
  + https://www.educba.com/mariadb-add-user/
* [list users](https://www.cyberciti.biz/faq/how-to-show-list-users-in-a-mysql-mariadb-database/)
* [root password](https://www.ibm.com/docs/en/spectrum-lsf-rtm/10.2.0?topic=ssl-configuring-default-root-password-mysqlmariadb)
* [Character Sets and Collations](https://mariadb.com/kb/en/setting-character-sets-and-collations/)

```bash
```

```sql
```

```sql
```

```sql
```

```sql
```

```bash
```

```bash
```

```bash
```

```bash
```

```bash
```

