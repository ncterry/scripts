#!/bin/bash
#scriptOutput.sh

# Simple command:
#	./scriptOutput.sh
# This will read the directory like a normal   ls -al    from terminal.
# It will print the normal    ls -al    on the file, as well as terminal.
#
# The 2 on this script command will create file2, and indicate any errors.
# If there are no errors, file2.txt will be empty
#
echo "------------------------"
echo "created file1.txt and file2.txt"
echo "file1.txt has the  [ls -al] for the current directory."
echo "file2.txt has any errors that may have happened."
#-----------------------------
ls -al 1>file1.txt 2>file2.txt

#-----------------------------
# Same as above but will only create the first.
# If we make an error, it will only tell us in terminal.
ls -al >file1.txt


#-----------------------------
# Use the ampersand and it will print either the info or error on that file.
ls -al >& file1.txt
