#!/bin/bash

echo "Enter the subnet "
read Subnet

if [ "$Subnet" == "" ]
then
	echo "Enter the Subnet"
	echo "Syntax Example = ./ping_sweeper2.sh \n 10.0.2"

else
	for IP in $(seq 1 254); do
        	ping -c 1 $Subnet.$IP | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" >> discovered_IP_Dinackus.txt &


	done
fi


