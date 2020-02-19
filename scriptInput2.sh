#!/bin/bash
#----------
#scriptInput2.sh
: '
Complicated inputs.
Read a file line by line, and print it out, line by line.
	./scriptInput2.sh file.txt

Because we have the bottom line:
	done < .....
If we do not include a file name to read/write
	./scriptInput2.sh

	then terminal will just remain open and waiting.
	While open, if we type in something, it will just
		print it back out, until we program exit.

'
#If we do not have a closed name on file:
#	file.txt
#vs
#	untitled doc 1
#
#then execute by:
#	./scriptInput.sh untitled\ doc\ 1
#	
#--------------------------------------------------------

while read line
do
	echo "$line"
done < "${1:-/dev/stdin}"
