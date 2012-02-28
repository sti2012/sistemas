#!/bin/sh

IFS=:
for a in $PATH
do
	if [ -f $a/test ] 
	then 
		echo $a/test
	fi
done
