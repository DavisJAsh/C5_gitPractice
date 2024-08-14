#!/bin/bash

#Write a script that checks if a directory named backup exists in the current directory. If it does not exist, create it.


if [ -d "/home/ubuntu/backup" ]; then
	echo "Directory Exists"
else 
	mkdir "/home/ubuntu/backup"
fi
