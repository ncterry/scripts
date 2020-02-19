#!/bin/bash
#------------
# awk  scripting is a completely separate tool. 
# We can use   awk   in bash, but remember it is independent of bash as well.
# awk   is basically a utility to write independent statements. 
# awk   transforms data files, and can produce reports.
#---------------------------------------------------------------
#
# if found, print a file's contents to terminal  with   awk
echo -e "-----\nEnter a filename to print from AWK:"
read fileName
#------------
if [[ -f $fileName ]] #If filename exists...
then
	awk '{print}' $fileName #If found, print contents of file to terminal.
else
	echo "$fileName does not exist."
fi
#----------------------------------------
#========================================

