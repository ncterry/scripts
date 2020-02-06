#!/bin/bash
#---------
# Ask the user for a target network subnet.
# Then we for-loop ping the full network, subnet.(1:254)
# -c 1   =  only ping each IP once.
# grep   64 bytes   to pick up line indicating a return packet.
# This tells us that network IP is active. 
#
#     Example line:
#     64 bytes from 10.0.2.15: icmp_seq=1 ttl=64 time=214 ms
#
# When we find this line, we then cut/delimiter using a space.
# That space separates each word in the 64 bytes line.
# -f = field
# -f 4     means we will grab the 4th field from the 64 byte line.
# The 4th field, separated by spaces is the IP address.
#
#  So the return in terminal, is all the IPs that had a return packet:
#    10.0.2.1:
#    10.0.2.2:
#    10.0.2.4:
#    10.0.2.15:
#------------------------------------------
echo "Return IPs are active network IPs"
echo "Enter the target subnet:  EX. 10.0.2"
read SUBNET
#----------
for IP in $(seq 1 254); do
	ping -c 1 $SUBNET.$IP | grep "64 bytes" | cut -d " " -f 4
# Return packet line.  
# -f 4  returns the 4th space separation i.e. the IP.
#    -f 1 -f 2 -f 3 -f 4
#     64 bytes from 10.0.2.15: icmp_seq=1 ttl=64 time=214 ms
#----------------------------------------------------------------
done
