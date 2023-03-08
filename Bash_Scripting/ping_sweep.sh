#!/bin/bash

echo "Enter the subnet only the first two numbers. Example: 10.0 or 192.168 or 172.5"
read Subnet
echo PING $Subnet

#I made it work with the last 8 bits. 
for IP in $(seq 1 254); do
	for IP2 in $(seq 1 254); do
		ping -c 1 $Subnet.$IP.$IP2 | grep "64 bytes"
done
done


