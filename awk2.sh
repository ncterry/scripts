#!/bin/bash
#----------------
# Request filename to search for, and then through
echo -e "-------\nEnter a filename to print from AWK:"
read fileName
#------------

if [[ -f $fileName ]]  #If filename does exist in location
then
#	awk '/Linux/ {print}' $fileName #Search file for word   Linux
#	awk '/Linux/ {print $4}' $fileName
	awk '/Linux/ {print $1, $3, $4}' $fileName
#------------------------------------------
# print     all lines with the word  Linux
# print $4  will print the 4th element of every line with Linux.
# Line:
#	This is Linux 2000

# If we execute the line 1, it will print out every line with Linux
# If we execute the line 2, it will only print out 	2000
# If we execute the line 3, it will print		This Linux 2000
# Every line that has  Linux  
# awk  will print out the 4th element of the line.

# Line:
#	There are many things on this Linux line.....
# Line above, $4 is    things
#----------------------------------------
else
	echo "$fileName does not exist"
fi

