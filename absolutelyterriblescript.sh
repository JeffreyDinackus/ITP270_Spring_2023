#!/bin/bash

#this script makes 1000 user accounts

su -

i=1

for i in {1..1000}
do
    sudo useradd ${i}
    echo "I JUST MADE A NEW USER ACCOUNT. #$i"
done
