
#!/bin/bash
#------------

echo -e "---------\nEnter filename to substitude using SED:"
read fileName
#------------
#------------
# Ask user for a filename
# EX. Replace all lowercase i, with uppercase I, g=global entire file.
#
if [[ -f $fileName ]] #if file exists
then
# The 1st substitute has CAT so the change between i/I is just the terminal output. 
# That does NOT alter the file.
# Include   -i    --> sed -i 's/i/I/g....	That will change ORIG file. DANGEROUS.

#	cat $fileName | sed 's/i/I/g' $fileName  #s/=sub, i/=replace i, I/=with I, g=global
	cat $fileName | sed 's/Linux/Unix/g' $fileName
	echo "-------------------"
#
# Same as above, but also copy these changes to new file
# Leave original file alone, as a backup.
	cat $fileName | sed 's/i/I/g' $fileName > sedfileAdjust.txt

else #----------
	echo "$fileName does not exist"
fi #-----------------------------------------------

