#!/bin/bash
#------------------
# 	man curl
#
#
# There is a company/site with test files to download. 
# Safe but always be careful. We are using this just for example.
# 
# Below is the url indicating the file we are going to download.
# Note - regardless of where the script is, the file downloads to 
#	location where the script is executed from. 
#
#---------------------------------------
url="http://www.ovh.net/files/1Mio.dat"   #url targeting file to download
#---------------------------------------
#curl ${url} -O 	 	# -O  download with original file info/name.
#curl ${url} -o NewFilename.txt	# -o name, download with a new file name.
#curl ${url} > Filename2.txt	# download with name, just a dif format.
#---------------------------------------
#---------------------------------------
curl -I ${url}
# This gives us header info, without downloading file.
# Helps to determing if this file is expected/safe/
#		HTTP/1.1 200 OK
#		Date: Tue, 21 Jan 2020 23:05:35 GMT
#		Server: Apache
#		Last-Modified: Thu, 16 Sep 2010 11:42:20 GMT
#		ETag: 362c002-100000-4905ef050df00
#		Accept-Ranges: bytes
#		Content-Length: 1048576
#		Connection: close
#		Content-Type: application/octet-stream
