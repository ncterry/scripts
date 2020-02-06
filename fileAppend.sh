#!/bin/bash
#--------------------

echo "Enter a filename that we want to append to:"
read fileName
#------------
#-----------------------
if  [[ -f "$fileName" ]]
then
	echo -e "-------------\nEnter the text you want to append to file:"
	read fileText
	echo "$fileText" >> $fileName	#>> double arrow is append
else 	#--------------------------------------------------------------------
	echo "$fileName does not exist."
	echo "Create $fileName and add text."
	echo "Enter the text that you want to append to the file:"
	read fileText
	echo "$fileText" > $fileName	#> single arrow is to create/overwrite
fi


