#!/bin/bash
#--------------------
# Create a function
function funcName()
{
	echo "This is the new function"
}
#----------------------------------------------------------
# Simply write out the function name in script to call it.
echo -e "-----------\nCall the function."
funcName
#========================================================
#========================================================
function funcPrint()
{
	echo $1		# Print Howdy
}
#---
funcPrint Howdy #call function with 1 parameter string
#=========================================================
#=========================================================
function funcPrint4()
{
	echo $1 $2 $3 $4	# Print nate zach ben pat
}
funcPrint4 nate zach ben pat
#=========================================================
#==============================================================
# Be careful, the var is local both in the function, and outside
#	but if we call the function, since the vars are the same name
#	this will still re-set the external var to I love Linux also.

function funcCheck()
{
	returnvalue="I love Linux"
} 
#------------
returnvalue="I love MAC"  #var outside of function but with same name.
echo $returnvalue
#----
funcCheck      #call function, goofy but it will reset the external var w/same name.
echo $returnvalue
#=====================
#=====================
#

