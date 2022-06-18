#!/bin/bash

echo "---------2-1-g------------"
# 2-1-g 繰り返し for while

set aa bb cc

for x in "${1}" "${2}" "${3}" ; do echo ${x} ; done

seq 3 | while read x ; do printf "%s " ${x} ; done
printf "\n"

echo "--------------------------"