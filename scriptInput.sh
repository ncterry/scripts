#!/bin/bash
#----------
#scriptInput.sh

# Simply  print the 3 inputs when executing script
# 	./scriptInput.sh bmw toyota honda
#	bmw toyota honda
echo "----------------------------"
echo "Print out 3 execution inputs"
echo $1 $2 $3
#------------
#
echo "----------------------------"
echo "Print out file name, plus 3 execution inputs"
echo $0 $1 $2 $3 #The ZERO will also print out the name of the script.
#		 ./scriptInput.sh bmw toyota honda
#------------
#------------
#------------
#------------
# Allow for input to be unlimited, in an array.
# ./scriptInput.sh nate zach pat tom jack
#	nate zach pat tom
# This will ignore the name of the script
# Not 4 names, it will still print out the first inputs
# More that 4 names, it will only print out the first 4
#
echo "-----------------------------"
echo "Print out any inputs"
echo "All inputs put into array"
echo "Print out first 4 inputs in array."
args=("$@")
echo ${args[0]} ${args[1]} ${args[2]} ${args[3]}
#------------
#------------
#------------
#------------
echo "------------------------------"
echo "Print out entire array of inputs"
args=("$@")
echo $@
echo $# #hash says we print out the number of items in array



