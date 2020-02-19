#!/bin/bash
#----------
#
echo "Enter first string:"
read st1
#-------
echo "Enter second string:"
read st2
#-------
#
# Simple string concatination.
# Nate/Ben
# Will be echoed as:     NateBen
#
echo "-------------------"
c=$st1$st2
echo $c
#
#
#
#--------------------------------
echo "--------------------"
echo ${st1^}    #Capitalize the first letter
echo ${st2^^}	#Capitalize the entire string.
