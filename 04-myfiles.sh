#!/bin/sh

du -a "$1" | sort -nr | while read tam name ; do if test -f $name ; then echo $tam $name ; fi ; done | head -3
