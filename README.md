# imap-backup

Docker container for [imap-backup](https://github.com/joeyates/imap-backup). By default the configurations and backups will be stored in the `/root/.imap-backup` directory and so this should be persisted [using volumes](https://docs.docker.com/engine/admin/volumes/volumes/).

## Usage

This section will outline basic usage of the container, assuming that `/srv/imap-backup` will be used on the host for persistence.

### Setup

The setup utility can be run using:

```shell
docker run --rm -it -v /srv/imap-backup:/root/.imap-backup flungo/imap-backup setup
```

### Backup

To run a backup (assuming setup has been completed), the following command can be used:

```shell
docker run --rm -v /srv/imap-backup:/root/.imap-backup flungo/imap-backup
```
