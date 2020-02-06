#-------------------------------------------------------------
# Full instructions here, note, I turned it off in gmail, and removed details 
#	here from Kali after the test.
#-------------------------------------
# To send emails, you need to install:
#	apt-get install ssmtp
#
#	Specifically working with google
#	This example - Need a google account
# 	Go to account:
#	Go to -Manage Google Account-
#	Click on   Security      tab
# 	There is a section, __Less secure app access__
#	Make sure that is turned on. 
#	Be careful, as this is not the safest option.
#	It would not be good to have with a primary account.
#---------------------------
#	Go back to terminal, edit file:
#		nano /etc/ssmtp/ssmtp.conf
#	There is a line that is default:
#		root=postmaster
#	Change it to your email:
#		root=ncterry7@gmail.com
#--------------------------------------
# To /etc/ssmtp/ssmtp.conf  Also add:
# -----------------------------------
# mailhub=smtp.gmail.com:587    (note: 587 is generic TLS port, SSL port is 465)
# AuthUser=ncterry7@gmail.com
# AuthPass=nates password
# UseSTARTTLS=yes
# ---------------
# Save file. Now we edit our script.....
#-----------------------------------------------
#!/bin/bash

ssmtp ncterry7@gmail.com
#-----------------------------------------------
# Our script is above, now execute like this:   ./sendEmailViaScript.sh
# To: alivenate@gmail.com
# From: ncterry7@gmail.com
# Cc: ncharlesterry@gmail.com
# Subject: smtp test
# This is the body of the message - Nate
#
# Then press CTRL + D
# Which will connect and send. I just checked ncterry7 online, and it sent.
# It has a bit of a delay reaching the recipients though.
# REMEMBER THIS IS NOT VERY SECURE.
