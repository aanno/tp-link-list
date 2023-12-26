# MariaDB

## F39 (uninstall)

```bash
dnf remove mariadb-server
Abhängigkeiten sind aufgelöst.
===================================================================================================================================
 Paket                                         Architektur          Version                          Paketquelle             Größe
===================================================================================================================================
Entfernen:
 mariadb-server                                x86_64               3:10.5.23-1.fc39                 @updates                 69 M
Abhängige Pakete werden entfernt:
 kf5-akonadi-server-mysql                      x86_64               23.08.4-1.fc39                   @updates                3.2 k
Nicht benötigte Abhängigkeiten werden entfernt:
 mariadb                                       x86_64               3:10.5.23-1.fc39                 @updates                 18 M
 mariadb-backup                                x86_64               3:10.5.23-1.fc39                 @updates                 24 M
 mariadb-common                                x86_64               3:10.5.23-1.fc39                 @updates                179 k
 mariadb-cracklib-password-check               x86_64               3:10.5.23-1.fc39                 @updates                 17 k
 mariadb-errmsg                                x86_64               3:10.5.23-1.fc39                 @updates                2.6 M
 mariadb-gssapi-server                         x86_64               3:10.5.23-1.fc39                 @updates                 20 k
 mariadb-server-utils                          x86_64               3:10.5.23-1.fc39                 @updates                798 k
 mysql-selinux                                 noarch               1.0.10-1.fc39                    @updates                 49 k
 perl-DBD-MariaDB                              x86_64               1.22-6.fc39                      @anaconda               376 k
 perl-DBI                                      x86_64               1.643-18.fc39                    @anaconda               1.8 M
 qt5-qtbase-mysql                              x86_64               5.15.11-7.fc39                   @updates                 86 k

Transaktionszusammenfassung
===================================================================================================================================
Entfernen  13 Pakete
```

## Install self-provided MariaDB 11.1

Sequence:

```bash
./MariaDB-common-11.1.4-1.fc39.x86_64.rpm
./MariaDB-client-11.1.4-1.fc39.x86_64.rpm
./MariaDB-server-11.1.4-1.fc39.x86_64.rpm
./MariaDB-client-11.1.4-1.fc39.x86_64.rpm
./MariaDB-cracklib-password-check-11.1.4-1.fc39.x86_64.rpm
./MariaDB-gssapi-server-11.1.4-1.fc39.x86_64.rpm

kf5-akonadi-server-mysql
```

```bash
dnf install ./MariaDB-server-11.1.4-1.fc39.x86_64.rpm
Letzte Prüfung auf abgelaufene Metadaten: vor 0:00:25 am Di 26 Dez 2023 11:55:36 CET.
Abhängigkeiten sind aufgelöst.
===================================================================================================================================
 Paket                            Architektur              Version                            Paketquelle                    Größe
===================================================================================================================================
Installieren:
 MariaDB-server                   x86_64                   11.1.4-1.fc39                      @commandline                    12 M
Schwache Abhängigkeiten werden installiert:
 pv                               x86_64                   1.7.24-1.fc39                      fedora                          69 k

Transaktionszusammenfassung
===================================================================================================================================
Installieren  2 Pakete

Gesamtgröße: 12 M
Gesamte Downloadgröße: 69 k
Installationsgröße: 107 M
Ist dies in Ordnung? [j/N]: j
Pakete werden heruntergeladen:
pv-1.7.24-1.fc39.x86_64.rpm                                                                        567 kB/s |  69 kB     00:00
-----------------------------------------------------------------------------------------------------------------------------------
Gesamt                                                                                             345 kB/s |  69 kB     00:00
Transaktionsüberprüfung wird ausgeführt
Transaktionsüberprüfung war erfolgreich.
Transaktion wird getestet
Transaktionstest war erfolgreich.
Transaktion wird ausgeführt
  Vorbereitung läuft    :                                                                                                      1/1
  Installieren          : pv-1.7.24-1.fc39.x86_64                                                                              1/2
  Ausgeführtes Scriptlet: MariaDB-server-11.1.4-1.fc39.x86_64                                                                  2/2
usermod: Keine Änderungen

  Installieren          : MariaDB-server-11.1.4-1.fc39.x86_64                                                                  2/2
  Ausgeführtes Scriptlet: MariaDB-server-11.1.4-1.fc39.x86_64                                                                  2/2


Two all-privilege accounts were created.
One is root@localhost, it has no password, but you need to
be system 'root' user to connect. Use, for example, sudo mysql
The second is mysql@localhost, it has no password either, but
you need to be the system 'mysql' user to connect.
After connecting you can set the password, if you would need to be
able to connect as any of these users with a password and without sudo

See the MariaDB Knowledgebase at https://mariadb.com/kb

Please report any problems at https://mariadb.org/jira

The latest information about MariaDB is available at https://mariadb.org/.

Consider joining MariaDB s strong and vibrant community:
https://mariadb.org/get-involved/


Cannot set file attributes for '/var/log/journal', maybe due to incompatibility in specified attributes, previous=0x10001000, current=0x10001000, expected=0x10801000, ignoring.
Cannot set file attributes for '/var/log/journal/9e7ccc090c6c4c128b6ce243ff5f32d4', maybe due to incompatibility in specified attributes, previous=0x00001000, current=0x00001000, expected=0x00801000, ignoring.

  Überprüfung läuft     : pv-1.7.24-1.fc39.x86_64                                                                              1/2
  Überprüfung läuft     : MariaDB-server-11.1.4-1.fc39.x86_64                                                                  2/2

Installiert:
  MariaDB-server-11.1.4-1.fc39.x86_64                                    pv-1.7.24-1.fc39.x86_64

Fertig!
```

## Built packages

```bash
$ ls -l
insgesamt 51952
drwxr-xr-x. 2 root   root       3488 26. Dez 11:50 debuginfo
-rw-r--r--. 1 tpasch tpasch  6975396 26. Dez 11:50 MariaDB-backup-11.1.4-1.fc39.x86_64.rpm
-rw-r--r--. 1 tpasch tpasch  3016571 26. Dez 11:50 MariaDB-client-11.1.4-1.fc39.x86_64.rpm
-rw-r--r--. 1 tpasch tpasch    11703 26. Dez 11:50 MariaDB-client-compat-11.1.4-1.fc39.noarch.rpm
-rw-r--r--. 1 tpasch tpasch    89696 26. Dez 11:50 MariaDB-common-11.1.4-1.fc39.x86_64.rpm
-rw-r--r--. 1 tpasch tpasch   545418 26. Dez 11:50 MariaDB-connect-engine-11.1.4-1.fc39.x86_64.rpm
-rw-r--r--. 1 tpasch tpasch    13422 26. Dez 11:50 MariaDB-cracklib-password-check-11.1.4-1.fc39.x86_64.rpm
-rw-r--r--. 1 tpasch tpasch  1345449 26. Dez 11:50 MariaDB-devel-11.1.4-1.fc39.x86_64.rpm
-rw-r--r--. 1 tpasch tpasch    15052 26. Dez 11:50 MariaDB-gssapi-server-11.1.4-1.fc39.x86_64.rpm
-rw-r--r--. 1 tpasch tpasch    25062 26. Dez 11:50 MariaDB-hashicorp-key-management-11.1.4-1.fc39.x86_64.rpm
-rw-r--r--. 1 tpasch tpasch    71223 26. Dez 11:50 MariaDB-oqgraph-engine-11.1.4-1.fc39.x86_64.rpm
-rw-r--r--. 1 tpasch tpasch    11614 26. Dez 11:50 MariaDB-provider-bzip2-11.1.4-1.fc39.x86_64.rpm
-rw-r--r--. 1 tpasch tpasch    11525 26. Dez 11:50 MariaDB-provider-lz4-11.1.4-1.fc39.x86_64.rpm
-rw-r--r--. 1 tpasch tpasch    11570 26. Dez 11:50 MariaDB-provider-lzma-11.1.4-1.fc39.x86_64.rpm
-rw-r--r--. 1 tpasch tpasch    11512 26. Dez 11:50 MariaDB-provider-lzo-11.1.4-1.fc39.x86_64.rpm
-rw-r--r--. 1 tpasch tpasch    11568 26. Dez 11:50 MariaDB-provider-snappy-11.1.4-1.fc39.x86_64.rpm
-rw-r--r--. 1 tpasch tpasch  4556121 26. Dez 11:50 MariaDB-rocksdb-engine-11.1.4-1.fc39.x86_64.rpm
-rw-r--r--. 1 tpasch tpasch   975849 26. Dez 11:50 MariaDB-s3-engine-11.1.4-1.fc39.x86_64.rpm
-rw-r--r--. 1 tpasch tpasch 12244935 26. Dez 11:50 MariaDB-server-11.1.4-1.fc39.x86_64.rpm
-rw-r--r--. 1 tpasch tpasch     9249 26. Dez 11:50 MariaDB-server-compat-11.1.4-1.fc39.noarch.rpm
-rw-r--r--. 1 tpasch tpasch   126019 26. Dez 11:50 MariaDB-shared-11.1.4-1.fc39.x86_64.rpm
-rw-r--r--. 1 tpasch tpasch 23030893 26. Dez 11:50 MariaDB-test-11.1.4-1.fc39.x86_64.rpm
```


```bash
```

```bash
```

```bash
```

```bash
```
