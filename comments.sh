#!/bin/bash

#--------------------------------------------
# hash + text means we have a simple comment.
#-------------------------------------------
: '
Multi comment
Colon+Space+SingleQuote

Then another single quote at the end of the text.

this is a cat comment
this is a cat comment
this is a cat comment
this is a cat comment'
#---------------------
#
echo "how to add comments to a file"
#
#
# Execute file, and terminal will have the line above ^^^
# Then will be waiting because of   cat
# User can enter text, then press Enter, then press CTRL + Z
# Just CTRL + Z did end the   cat   but did not put the text on the file.
# If I pressed ENTER first, then CTRL + Z then the text was appended to the file.
cat >> /root/Desktop/gathertext.txt
#
