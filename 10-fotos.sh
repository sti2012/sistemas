#!/bin/sh 

unalias ls

mkdir /tmp/cuadros

wget -q -nd -P /tmp/cuadros/ http://www.tamsquare.com/artist/Adolphe-William-Bouguereau/
wget -q -nd -P /tmp/cuadros/ `cat index.html | grep '<LI>' | sed 's/.*href="\(.*\)".*/\1/'`

for a in `ls /tmp/cuadros/*html | grep -v index.html`
do
	img=`cat $a |grep img | head -n 1 | sed 's/.*src="\([^"]*\)".*/\1/'`
	echo $img
	wget -q -P /tmp/cuadros $img
done

for a in `ls /tmp/cuadros/*jpg`
do
	echo $a
	convert $a -resize '100x100!' `basename $a .jpg`.png
done
