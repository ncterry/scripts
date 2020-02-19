#!/bin/bash
#---------------------

echo "Enter filename from which you want to read from:"
read fileName
#---------------------------------------------------------------------------
: '
Note - IFS in the while loop is to set a field separator when reading file.
This determines what we want to use to separate. 
Currently it seems empty with  IFS=   But It DEFAULTS to a space.
If we knew the file had lines that all ended with a semi-colon, then we put in:
	while IFS=; -r line
'
#---------------------------------------------------------------------------
if [[ -f "$fileName" ]]    #  -f   lets us verify that the file name exists.
then
	while IFS= read -r line
	do
		echo "$line"
	done < $fileName  	# < back arrow means we are reading from file.
				# File contents will print out
#---
#---
else
	echo "$fileName does not exist."
fi
#----------------------------------------
