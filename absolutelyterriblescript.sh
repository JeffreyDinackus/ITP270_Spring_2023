#!/bin/bash

#this script makes 1000 user accounts

su -

i=0
d=0

for i in {1..1000}
do
    d = d+1
    useradd $d
    echo "I JUST MADE A NEW USER ACCOUNT. #$d"
done
