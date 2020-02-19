#!/bin/bash
#-----------------------
#
echo -e "---------\nCheck if directory named Directory2 exists locally."
echo "Enter the directory name to check:"
read direct #input var name
#--------------------------------------------------------------------
#-----------------------Use     -f    if checking for a file.
if [ -d "$direct" ] #---The  	-d    allows us to check for directory
then
	echo "$direct does exist"
else
	echo "$direct does not exist"
	mkdir -p Directory2
	echo -e "Just created Directory2"
fi
#---------------------------------------
#---------------------------------------
#Create a folder in the local directory.
#echo -e "-------------\nCreate Directory2"
#mkdir -p Directory2
#---------------------------------------
#-----------------------------------------------------------------------------
echo -e "---------\nCheck again if directory named Directory2 exists locally."
echo "Enter the directory name to check:"
read direct #input var name
#-------------------------------------------------------------------
if [ -d "$direct" ] # The  -d  allows us to check for file/directory
then
	echo "$direct does exist"
else
	echo "$direct does not exist"
fi
