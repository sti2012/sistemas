#!/bin/sh

$1 & 
pid=$!
sleep 1
kill -9 $!
