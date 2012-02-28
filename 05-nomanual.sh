#!/bin/sh

for a in /bin/*
do
	if [ ! -f /usr/share/man/man1/`basename $a`.1.gz ]
	then 
		echo $a
	fi
done
