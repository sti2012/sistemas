#!/bin/sh

if test -z "$1" 
then 
	echo "Numero argumentos insuficiente" >&2
	exit 1
fi 

name="`echo $1 | sed 's|/[ ]*$||g' | sed 's|/|__|'g`_`date +%y%m%d`"

echo $name
i=1
while true 
do 
	if test -e $name\_$i.tgz 
	then 
		i=`echo $i + 1 | bc`
	else
		break  
	fi
done

echo $name\_$i.tgz
tar cvfz $name\_$i.tgz $1
