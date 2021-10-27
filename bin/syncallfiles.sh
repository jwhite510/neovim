#!/bin/bash

directoryfrom=/home/dir1
directoryto=/mnt/d/dir2
echo "sync files"
# don't copy the .git folder
rsync -rav --perms \
	--exclude='.git/' \
	$directoryfrom $directoryto

