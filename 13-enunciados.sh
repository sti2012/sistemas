#!/bin/sh

echo '<html><head><title>Practicas de SSOO</title></head>'
echo '<body>'

echo '<ul>'

for a in Practica_de_*_??.txt
do
	echo -n '<li><a href="#'
	echo -n `echo -n $a | sed 's/.*\([CS].*\)_\([0-9]\{2\}\).*/\1-\2/g'`
	echo -n '">'
	echo -n `echo $a | sed 's/.*\([CS].*\)_\([0-9]\{2\}\).*/\2 Practica de \1/g'`
	echo '</li>'
done
echo '</ul>'

for a in Practica_de_*_??.txt
do
	echo -n '<h1><a name="'
	echo -n `echo -n $a | sed 's/.*\([CS].*\)_\([0-9]\{2\}\).*/\1-\2/g'`
	echo -n '">'
	echo -n `echo $a | sed 's/.*\([CS].*\)_\([0-9]\{2\}\).*/\2 Practica de \1/g'`
	echo '</a></h1>'
	echo '<pre>'
	cat $a
	echo '</pre>'
	echo '<br/>'
done

echo '</body>'
echo '</html>'
