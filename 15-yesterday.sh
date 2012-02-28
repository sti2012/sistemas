#!/bin/sh

if test ! "$1" == "-n" -o "$#" -ne 3
then 
	echo "Uso: $0 -n dias directorio" >&2
	exit 1
fi

name="`echo $3 | sed 's|/[ ]*$||g' | sed 's|/|__|'g`_`date -v -$2d +%y%m%d`"

for f in $name\_*
do
	echo tar tvfz $f
done

exit
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
