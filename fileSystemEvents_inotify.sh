#!/bin/bash
#------------------
# inotify alerts/messages for monotoring filesystem events.
# ---------------
# install inotify
#	sudo apt-get install inotify-tools
#
#------------------------------
# Basic command to watch this address.
# If not present, when we execute the script,  we get:
#	Setting up watches
#	Couldn't watch /temp/NewFolder: No such file or directory.
inotifywait -m /temp/NewFolder

#-------------------------------------------------------------------
# If we have the target in place, when we execute the script, we get:
#	Setting up watches.
#	Watches established
# And terminal is just waiting for a notificaion.
#
mkdir -p /temp/NewFolder
inotifywait -m /temp/NewFolder



# When Terminal is waiting, these are messages that we get.
# open folder, close folder, create file in folder.......etc.
# If we don't have the script executed/running in terminal window
#	then we do not get any notifications. It must be running in a window.
#-------
#	/temp/NewFolder/ OPEN,ISDIR 
#	/temp/NewFolder/ ACCESS,ISDIR 
#	/temp/NewFolder/ CLOSE_NOWRITE,CLOSE,ISDIR 
#	/temp/NewFolder/ CREATE testfile.txt
#	/temp/NewFolder/ OPEN testfile.txt
#	/temp/NewFolder/ CLOSE_WRITE,CLOSE testfile.txt
#	/temp/NewFolder/ OPEN,ISDIR 
#	/temp/NewFolder/ ACCESS,ISDIR 
#	/temp/NewFolder/ ACCESS,ISDIR 
#	/temp/NewFolder/ CLOSE_NOWRITE,CLOSE,ISDIR 

