#!/bin/sh

if [ -z "$1" ]
then
	echo Incorrect number of arguments 1>&2
	exit 1
fi

provider=""
user=""

for f in *.o
do
	s1=`nm -f $f | grep " $1$"`
	if [ ! -z "$s1" ]
	then
		s2=`echo $s1 | grep ^[^0-9]`
		if [ ! -z "$s2" ]
		then
			user=$user$f:
		else
			provider=$provider$f:
		fi
	fi
done

IFS=:
for f1 in $provider
do
	for f2 in $user
	do
		echo "$f1 -> $f2"
	done
done
