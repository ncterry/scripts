#!/bin/bash
#pipes.sh
#----------
# Send output from one script to another script.
# The message here is sent to the other file.
# The other file is a working script
# That script has:
#	
#	#!/bin/bash
#	echo *The message from pipes.sh is:   $MESSAGE*
#
# So the other file, pipes2.sh will take this message,
#	and combine it with it's own.
#
#---------------------------------
MESSAGE="Hello LinuxHint Audience"
export MESSAGE
./pipes2.sh
