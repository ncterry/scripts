#!/bin/bash
#------------------------------------------
#---Made by:   ./1scriptmaker.sh
#---This is:   parseData.sh
#------------------------------------------
# This script targets a specific file, with data seen below.
# This looks for which email domain is in a line.
# Then strips the username from the front of that line --> send to file
# Then strips the password from the end of that line --> send to file.
#
# Examples of our target dummydata
#	00--fzxngmpjow:@gmail.com:ntuvmuazwbe
#	00--zvdozhewro:@outlook.com:kpfdxmmnjelrm
#
# Execute:
# 		./parseData.sh @gmail.com gmail.txt
#
# master.txt --> full copy of all lines found with @gmail.com
# passwords.txt --> pulls "ntuvmuazwbe" i.e. crypted password from every line with @gmail.com
# users.txt --> pulls "00--fzxngmpjow" i.e. crypted user name from every line with @gmail.com
#
# We will have our target file/directory in this program. Not input
# This program can be adjusted, but now it targets the dummydata shown above.
# The 2nd argument is the output file-basename
# =========================================================
# ---------------------------------------------------------

if [ "$#" != "2" ]; then	#If executed without 2 arguments.
	echo "Breach-Parse v2: A Breached Domain Parsing Tool by Nate Terry."
	echo " "
	echo "Usage: 	./parseData.sh <domain to search> <output file>"
	echo "Example:	./parseData.sh @gmail.com gmail.txt"
	echo " "
	echo "Multiple domains are possible to search for:"
	echo "Example:	./parseData.sh \"@gmail.com|@yahoo.com\" multiple.txt"
	echo "Multiple domains NEED quotes around domains."
	exit 1

else	#---------------------------------------------------------------------
	# These files/lines will be chopped/appended at the bottom of this program. This just creates the files
	fullfile=$2 #This grabs 2nd arg   gmail.txt   from input.
	#
	fbname=$(basename "$fullfile" | cut -d "." -f1) # This splits gmail.txt to just   gmail
	#
	# 00--fzxngmpjow:@gmail.com:ntuvmuazwbe
	master="parseData_"$fbname"_master.txt"	# This file will hold full line copies that contain @gmail.com
	#
	# 00--fzxngmpjow
	users="parseData_"$fbname"_users.txt"	# This file will hold the user section of any line with @gmail.com
	#
	# ntuvmuazwbe
	passwords="parseData_"$fbname"_passwords.txt" # This file will hold the password of any lie with @gmail.com
	#---------------------------------------------------------------------
	touch $master #Create master file
	#Count all new lines, in all of the files, in the target directory.
	total_Files=$(find /media/sf_KaliSecurity/HackingCourse/Code/bash_scripts/dummyFiles -type f | wc -l)
	file_Count=0
	#=============================================================================
	#=============================================================================
	# Example:  Progress : [##########------------------------------] 27%
	# Get total count up front, then percent compare our progression through those files.
	# Simply just shows progress, in case you have huge amounts to sift through.
	function ProgressBar {

		let _progress=(${file_Count}*100/${total_Files}*100)/100
		let _done=(${_progress}*4)/10
		let _left=40-$_done

		_fill=$(printf "%${_done}s")
		_empty=$(printf "%${_left}s")

	printf "\rProgress : [${_fill// /\#}${_empty// /-}] ${_progress}%%"
	}
	#=============================================================================
	#=============================================================================
	find /media/sf_KaliSecurity/HackingCourse/Code/bash_scripts/dummyFiles -type f -print0 | while read -d $'\0' file

	do	#If we input $1=gmail.com, any line with gmail.com is saved to master
		grep -a -E "$1" "$file" >> $master
		((++file_Count))
		ProgressBar ${number} ${total_Files}
	done
fi
#----------------------------------------------------
#----------------------------------------------------
# Example of a Line from master with '@gmail.com'
#	00--fzxngmpjow:@gmail.com:ntuvmuazwbe
#
# Grab $1 from line, based on delimiter (:), so we get '00--fzxngmpjow'
# Then send that 'user' to the user file.
sleep 1
awk -F':' '{print $1}' $master > $users 			### '00--fzxngmpjow'
# Currently grabs  everything before the first (:), we need to remove '00--'
cat $users  | sed 's/00--//g' > "parseData_clean_"$users	### 'fzxngmpjow'
#
# Grab the $3 from the line, based on delimiter (:), so we get 'ntuvmuazwbe'
# Then send that to the passwords file.
# We could then try to decrypt this file, and get all the real passwords
# This is a dummy example, in real files the users/passwords may be normal, and not encrypted.
#--------------------------------------------------------------------------
#Example Line:     00--fzxngmpjow:@gmail.com:ntuvmuazwbe
# Grab $3 from line based on delimiter (:), so we get 'ntuvmuazwbe'
# This is the password, may be encrypted.
sleep 1
awk -F':' '{print $3}' $master > $passwords # Send 'ntuvmuazwbe' linebyline to password file.
echo
exit 0
