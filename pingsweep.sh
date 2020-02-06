#!/bin/bash
# Simple Pingsweep Script
# Ask user to input 3 part subnet of the target network
# Example	192.168.3
# The program will take that subnet, and will then ping
#	the full range 	subnet.(1:254)
#-------------------------------------------
# From terminal, run pingsweep.sh:
#	./pingsweep.sh
# You may need to chmod the file and give permissions first:
# 	chmod 755 pingsweep.sh
# Ask user to enter subnet
#
echo "Please enter the subnet: Example 10.0.2"
read SUBNET
#
#--------------------------------------------
#--------------------------------------------
#
# This adds .1   .2   .3...... onto the subnet we entered.
for IP in $(seq 1 254); do 
	ping -c 1 $SUBNET.$IP  
# ping entered subnet, plus sequence 1-254
#            -c 2 = ping each 2 times---------------
#
#--------------------------------------------
done
