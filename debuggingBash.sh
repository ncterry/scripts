#!/bin/bash
#-------------

# Simple if/then. 
# Error = missing space between [[ -f
#------------------------------------------
echo "Enter filename:"			#--
read fileName				#--
if [[-f $fileName ]]			#--
#if [[ -f $fileName ]]			#--
then 					#--
	sed 's/2000/8000/g' $fileName 	#--
else 					#--
	echo "$fileName not found." 	#--
fi 					#--
#------------------------------------------
: '
How to debug:
Execute script:
	# bash -x ./debuggingBash.sh
That command lets us walk through the execution and
	tells us in terminal which lines are being executed:
	Noted by the  +
#==========================================================

root@kali:~/Desktop/ShellScripts# bash -x debuggingBash.sh 
	+ echo 'Enter filename:'
	Enter filename:
	+ read fileName
	sedfile.txt
	+ [[ -f sedfile.txt ]]
	+ sed s/2000/8000/g sedfile.txt
		This is Linux 8000
		This is Windows 3000
		This is MAC 4000
#==========================================================

If we have an error, it will tell us on that line:

	+ '[[-f' sedfile.txt ']]'
	debuggingBash.sh: line 9: [[-f: command not found
'
#==========================================================
