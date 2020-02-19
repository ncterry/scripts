#!/bin/bash
#----------
: '
This primary script is to get info from a website using wget

BUT

The bottom line is calling a script from this script.
We got info/file from our wget, and we want to edit that file.
We created another script to edit in the way we want.

Call that new script from this script:

	# sh nextscript.sh
==========================================================
'

clear
break="\n\n-----------------------------\n"
echo -e $break
#-------------
echo -n "Enter a domain (EX. www.cnn.com): "
read domain
#---------------------------------------------------
#Check for no response
if [ -z $domain ]; then		#-z = null, no input
	echo -e "You did not enter a domain."
	exit
fi
#---------------------------------------------------
#wget - The non-interactive network downloader.
wget -q $domain -O callScriptFromScript.txt #-q = quiet = no wget text in terminal
echo "callScriptFromScript.txt is created from callScriptFromScript.sh" >> /media/sf_KaliSecurity/Scripts/callScriptFromScript.txt

#
# Entered cnn.com for wget, and got this......
:'
Sitemap: https://www.cnn.com/sitemaps/cnn/index.xml
Sitemap: https://www.cnn.com/sitemaps/cnn/news.xml
User-agent: *
Allow: /audio/podcasts/
Allow: /partners/ipad/live-video.json
Disallow: /*.jsx$
Disallow: /ads/
Disallow: /aol/
'
# We also created a script to remove the Disallow: text
# This file is in the same directory
# execute another script from this script.
# NOTE - we tried this again, and while the process works, 
#	the get results are not the same as before. 
#	Simply a different cnn
# removeText.sh is using a sample wget file, not the wget file we puller here.
# Don't change, this is just an example.
sh /media/sf_KaliSecurity/Scripts/removeText.sh
