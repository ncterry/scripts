#!/bin/bash
#------------------------------------------
#---Made by:   ./1scriptmaker.sh
#---This is:   shellCommandsWithBash.sh
#------------------------------------------

# Shell execution is simple:	./shellCommandsWithBash.sh

# We want to execute a basic shell command in this script

# Use backticks with echo to execute a shell command
# ` `           not quotes ' '

echo `uname -o` #EX. GNU/Linux
echo `whoami`   #EX. root

# Certain commands look different in result
# Same info, but it prints differently in Shell
echo `ping -c 4 10.0.2.3`

# ---------------------------------------------
# Normal Ping
: '
root@kali:/media/sf_KaliSecurity/Scripts# ping 10.0.2.2
PING 10.0.2.2 (10.0.2.2) 56(84) bytes of data.
64 bytes from 10.0.2.2: icmp_seq=1 ttl=64 time=0.241 ms
64 bytes from 10.0.2.2: icmp_seq=2 ttl=64 time=0.319 ms
64 bytes from 10.0.2.2: icmp_seq=3 ttl=64 time=0.317 ms
64 bytes from 10.0.2.2: icmp_seq=4 ttl=64 time=0.279 ms
64 bytes from 10.0.2.2: icmp_seq=5 ttl=64 time=0.327 ms
'
#----------------------------------------------
# Execute this file. 3 commands but ping prints differently 
:'
root@kali:/media/sf_KaliSecurity/Scripts# ./shellCommandsWithBash.sh 
GNU/Linux
root
PING 10.0.2.3 (10.0.2.3) 56(84) bytes of data. 64 bytes from 10.0.2.3: 
icmp_seq=1 ttl=64 time=0.829 ms 64 bytes from 10.0.2.3: icmp_seq=2 ttl
=64 time=0.333 ms 64 bytes from 10.0.2.3: icmp_seq=3 ttl=64 time=0.330 
ms 64 bytes from 10.0.2.3: icmp_seq=4 ttl=64 time=0.318 ms --- 10.0.2.
3 ping statistics --- 4 packets transmitted, 4 received, 0% packet los
s, time 3065ms rtt min/avg/max/mdev = 0.318/0.452/0.829/0.217 ms

'
