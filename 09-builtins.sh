#!/bin/sh

for a in /bin/*
do 
	type `basename $a` | grep builtin | while read 
	do 
		echo $a
	done
done
