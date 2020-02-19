#!/bin/bash
#----------
#
# Ask user for 2 strings.
# Example, nate/ben
echo "enter first string:"
read st1
#-------
echo "enter second string:"
read st2
#----------------------
#----------------------
# There are different comparisons, but if we enter nate/ben
#	and also then use the    -eq   or    <
#	then there will be an error, as the program is trying
# 	to compare integers, not strings. Not sure why, but 
#	this works when just comparing 2 strings, such as names.
# Comparisons for strings works here.
#----------------------
if [ "$st1" == "$st2" ]
then
	echo "strings match"
#-----------
elif [ "$st1" \< "$st2" ]
then
	echo "string1 ($st1) is less than string2 ($st2)"
#-----------
elif [ "$st2" \< "$st1" ]
then
	echo "string2 ($st2) is less than string1 ($st1)"
fi
#-----------
#----------------------------------
# above, is matching the exact string. nate Nate   do not match.
#----------------------------------
#----------------------------------
#

