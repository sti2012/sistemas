#!/bin/sh

stack "$1" | head -n 4 | tail  -1
