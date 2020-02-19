#!/bin/bash
#--------------
#professionalMenus2.sh

#
# First comment to user.
echo "Press any key to continue."
#----------------------------------------------------------------
#
# Remain in while loop forever, or until user presses key.
while [ true ]
do
	read -t 3 -n 1 #every 3sec, print our 1 Line from else section.
#------------------
if [ $? = 0 ] # If user presses a key, the while loop will terminate.
then
	echo "You have terminated the script."
	exit;
else
	echo "Waiting for you to press the key..."
fi

done
