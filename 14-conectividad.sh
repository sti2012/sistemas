#!/bin/sh

for m in `cat $HOME/listademaq`
do
	time=`ping  -c 1 $m | grep time | cut -f 7 -d" "`
	time=`echo $time | sed 's/time=\([0-9]*\)\.[0-9]*/\1/'`
	
	if test -z "$time" -o "0$time" -gt 100
	then
		echo $m >> $HOME/problemas 
	fi
done
