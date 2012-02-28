#!/bin/sh

for a in `ls $PWD`
do
	git add $a
	echo ADD $a
done

git commit -m 'subida'
git remote add origin git@github.com:sti2012/sistemas.git
git push -u origin master
