#!/bin/bash
#-------- We create a file:  grepFile.txt with these 3 lines repeated: 
#	This is Windows
#	This is MAC
#	This is Linux
#-----------------------
# Ask user for file/location to search through.
echo -e "-------\nEnter file name to search with Grep:"
read fileName
#------------

if [[ -f $fileName ]] #If requested file exists in requested|current directory...
then
	echo "Enter the text to search:" # Ask user for text to search for in file.
	read grepvar
	grep -i -n $grepvar $fileName #Search file for text
#-------
# -i   	case-insensitive in var
# -n	along with findings, list line number
# -c	displays number of times search word appears
# -v	show all lines, that DONT have the search word.
#NOTE - some of these search options can conflict with each other.
#--------------------------------------------
#
else
	echo "File: $fileName  does not exist."
fi
#
# ------------------------------------
# if grepvar is:	linux
# We will get a return of:	This is Linux
# Repeats however many lines linux is on in the file.
# Remember  -i  lets us use lowercase L

