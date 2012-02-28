#!/bin/sh

z=':'
for a in /bin/* 
do
	for b in /bin/* 
	do
		if test $a != $b 
		then
			if test ! -z `echo $z | fgrep ":$b:"`
			then 
				if cmp -s $a $b
				then 
					echo $a == $b
				fi
			fi
		fi
		z="$a:$z"
	done
done
