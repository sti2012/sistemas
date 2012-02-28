#!/bin/sh

first=1
last=0
inc=1
case $# in 
	1)
		last=$1
	;;
	2)
		first=$1
		last=$2
	;;
	3)
		first=$1
		inc=$2
		last=$3
	;;
	*)
		exit 1
	;;
esac

i=$first 
while true 
do
	echo $i
	i=`echo $i + $inc | bc`
	if [ $last -lt $i ]
	then
		exit 0
	fi
done
	