#!/bin/bash


max1=255
max2=255


for i in `seq 1 $max1`
do
    for h in `seq 1 $max2`
    do
        var=192.168.$i.$h
        ping -c 1 $var
done
done
