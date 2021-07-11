#!/bin/bash
#
# Title:      PGBlitz (Reference Title File)
# Authors:    Admin9705, Deiteq, and many PGBlitz Contributors
# URL:        https://pgblitz.com - http://github.pgblitz.com
# GNU:        General Public License v3.0
################################################################################
sleep 2

hdpath="$(cat /var/plexguide/server.hd.path)"
mergerfs -o  defaults,cache.symlinks=true,cache.files=auto-full,cache.open=259200,cache.statfs=259200,cache.attr=259200,cache.entry=259200,cache.negative_entry=259200,category.create=ff,minfreespace=0,allow_other,dropcacheonclose=true,security_capability=false,xattr=nosys,statfs_ignore=ro,use_ino,hard_remove,auto_cache,sync_read,umask=0002,noatime,security_capability=false,xattr=nosys,statfs_ignore=ro,fsname=pgunion \
$hdpath/move=RW:$hdpath/downloads=RW:{{multihds}}/mnt/tdrive=NC:/mnt/gdrive=NC:/mnt/tcrypt=NC:/mnt/gcrypt=NC /mnt/unionfs
