#!/bin/bash
#------------------------------------------
#---Made by:   ./1scriptmaker.sh
#---This is:   ipsweep.sh
#------------------------------------------
: '
root@kali:~/Desktop/KaliSecurity# ping -c 1 10.0.2.4 > ip.txt

root@kali:~/Desktop/KaliSecurity# cat ip.txt 
PING 10.0.2.4 (10.0.2.4) 56(84) bytes of data.
64 bytes from 10.0.2.4: icmp_seq=1 ttl=64 time=0.035 ms

--- 10.0.2.4 ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev = 0.035/0.035/0.035/0.000 ms
'
# ------------------------------------------
:'
Execute:	# ./ipsweep.sh ###.###.###
So  $1 = ###.###.###
The combine that with the sequence range: 1 - 254
And we run a ping sweep on the full range:

###.###.###.1 ......... ###.###.###.254

Then if we have a return with 64 bytes, it means we got a response from that IP
Then we can cut out just the IP
And   tr = translate    just a way to remote that colon.
'


# Difference in these 2 is just the   &   after the ping.
# The    &    tells system to split these pings into different threads.
# Without the    &    each ping is individual, and will be much slower to get 254
# With the      &    the entire range is done almost immediately.
# -------------------------------------------------------------
## We want to target the IP address on the return 64 bytes line
#for ip in $(seq 1 254); do
#echo "$1.$ip"
#ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":"
#done
#-------------------------------------------------------------
# We want to target the IP address on the return 64 bytes line
for ip in $(seq 1 254); do
echo "$1.$ip"
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done

