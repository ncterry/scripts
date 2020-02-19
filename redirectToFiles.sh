#!/bin/bash
#redirectToFiles.sh

# one arrow > will re-write text on a file.
# Send text to a file that is going to be created.------------------------
echo "This text is going into a file" > /root/Desktop/2_RedirectToFile.txt


# two arrows >> will append text to a file.
# If you use just one > then it will overwrite everything.
#
# Read text from another file, and append that onto the new file also.
echo "Sent from \'redirectToFiles.sh\' " >> /root/Desktop/2_RedirectToFile.txt
cat  /media/sf_KaliSecurity/Scripts/natefile.txt  >> /root/Desktop/2_RedirectToFile.txt
echo "From /media/sf_KaliSecurity/Scripts/redirectToFiles.sh" >> /root/Desktop/2_RedirectToFile.txt


