#!/bin/bash #-----------
# We used [wget cnn.com] to get a file similar to:
: '
	Sitemap: https://www.cnn.com/sitemaps/sitemap-interactive.xml
	User-agent: *
	Allow: /audio/podcasts/
	Allow: /partners/ipad/live-video.json
	Disallow: /*.jsx$
	Disallow: /ads/
	Disallow: /aol/
# We want to remove Disallow: text so that we are left with just the location.
' #------------------------------------------------------------
file="/media/sf_KaliSecurity/Scripts/wgetSample.txt" #original
newfileSED="/media/sf_KaliSecurity/Scripts/removeTextSED.txt" #afterchanges
newfileAWK="/media/sf_KaliSecurity/Scripts/removeTextAWK.txt" #afterchanges
newfileCUT="/media/sf_KaliSecurity/Scripts/removeTextCUT.txt" #afterchanges
# First we can view the lines with that:
cat $file | grep "Disallow: "
#-------------------
: '
	Disallow: /*.jsx$
	Disallow: /ads/
	Disallow: /aol/
' 
#-------------Same 3 results below, w/3diff tools-------------------

: '
        /*.jsx$
        /ads/
        /aol/
'
# SED Now remove Disallow with Substitute: 
cat $file | sed 's/Disallow: //g' $file > $newfileSED
#-------------------------------------------------------------
# AWK print the 2nd column in text. Default separate by space.
# The 2nd column is the address, send to new file.
cat $file | awk '{print $2}' $file > $newfileAWK
#--------------------------------------------------------------
# CUT -d delimiter=space, then bring the 2nd field
cat $file | cut -d ' ' -f2  > $newfileCUT
#---------------------------------------------------------------
# We have a new file, and removed the   Disallow: 
: '
Sitemap: https://edition.cnn.com/sitemaps/news.xml
User-agent: *
Allow: /audio/podcasts/
Allow: /partners/ipad/live-video.json
/*.jsx$
/ads/
/aol/
/audio/
/beta/
'
