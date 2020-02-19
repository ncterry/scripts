#!/bin/bash
#------------------------------------------
#---Made by:   ./1scriptmaker.sh
#---This is:   copyFiles.sh
#------------------------------------------
#
# Copy a file MANY times.
# Simple procedure, but can be a pain to do in terminal.
#
# -----------------------------------------------------
# Execute:
#		./copyFiles <file path> <# of copies> <output file name>
#
#		./copyFiles.sh dummyFile.txt 1000 newDummyFile.txt
#
#		Creates 1000 copies of $1 file
# --------------------------------------------------------------------------

copyfile="$1"	#1st arg, file to copy
copynumber="$2"	#2nd arg, how many copies
outputfile="$3"	#3rd arg, new file name. Can be same, we are appending loop value
		#file.txt --> 1_file.txt, 2_file.txt, ... copynumber_file.txt

# echo is just to verify initial input is what you wanted.
echo "$copyfile"
echo "$copynumber"
echo "$outputfile"
# ------------------------------
for i in $(seq 1 $copynumber)	#range = 1-copynumber
do
	newfile="${i}_${outputfile}"	#1_file.txt, 2_file.txt, 3_file.txt...
	cp $copyfile $newfile
done

