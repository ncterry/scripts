#!/bin/bash
#------------------------------------------
#---Made by:   ./1scriptmaker.sh
#---This is:   translate.sh
#------------------------------------------

# Example:
# Open a text file, and read it.
# Find a repeating string	"00"
# Change those strings to	"11"
# Save the text with changes to a new file.
# -------------------------------------------------------------------------------
# Execution
# ./translate.sh <path/file> <string to find> <replace string with> <output file>
#
# ./translate.sh 1dummyData.txt 00 11 /root/Desktop/2dummyData.txt
# ------------------------------------------------------------------

firstfile="$1"
findstring="$2"
replacewith="$3"
outputfile="$4"
# -----------------------


cat $firstfile | tr $findstring $replacewith > $outputfile
echo "get here"
