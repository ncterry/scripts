#!/bin/bash
#------------------------------------------
#---Made by:   ./1scriptmaker.sh    -------
#------------------------------------------

# Assuming nmap is install on Linux OS
#
# Install nmap-vulners 
cd /usr/share/nmap/scripts
#
git clone https://github.com/vulnersCom/nmap-vulners.git
# Sample Basic Command:
#	nmap --script nmap-vulners -p80 -sV ###.###.###.###
# Simlar to normal nmap, but way more info + vuln-links:
#	nmap -sV Target_IPs
#
#-------------------------------------------------------
#
# Install Vulscan
git clone https://github.com/scipag/vulscan.git
#
# View pre-config databases that Vulscan uses:
#	ls vulscan/*.csv
#
#
# Make sure those databases are up to date:
cd vulscan/utilities/updater
chmod +x updateFiles.sh
sh updateFiles.sh
#
#
# Basic Command:
#	nmap --script vulscan -sV -p22 ###.###.###.###
#
# Using specific vulscan database
#	nmap --script vulscan --script-args vulscandb=exploitdb.csv -p22 ###.###.###.###
