#!/bin/sh 

#env | grep 'LANG.*=' | cut -d= -f1
env | grep 'LANG.*=' | sed -e 's/=.*$//'
