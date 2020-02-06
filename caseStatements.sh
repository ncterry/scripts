#!/bin/bash
#
#--------------------------------------------------
: '
This is expecting a user terminal input similar to:
	./CaseStatements.sh -f index.html

Execute the file:
	then add the option  ${1} below, which is -f or -d
	which indicates the 2 choices that we created.

	If you choose -f = file, then add {2} is the file name.
	If you choose -d = directory, then add {2} is the directory.
	If you dont include either than it defaults to the all case.

The input we exampled up top, will output:
	File name is index.html

This could be good for an advanced ping script where user
	includes {1} as the IP and {2} grep request. That is a simple
	command line, but this will let us make it much more complicated.
'
#--------------------------------------------------
#
option="${1}"
case ${option} in
	-f) FILE="${2}"
		echo "File name is $FILE"
		;;
	
	-d) DIR="${2}"
		echo "Dir name is $DIR"
		;;
	
	*)
		echo "'basename ${0}':usage: [-f file] | [-d directory]"
		exit 1 # Command to come out of the program with status 1
		;;
esac
