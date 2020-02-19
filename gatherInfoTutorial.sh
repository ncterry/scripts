#!/bin/bash
#------------------------------------------
#---Made by:   ./1scriptmaker.sh
#---This is:   2gatherInfoTutorial.sh
#------------------------------------------

# Gather wget info on ncterry.com 
# Output info to local file.
wget https://www.ncterry.com -O gatherInfoTutorial.txt


# 3 New files just to show progression
# There is a lot of comments on here just to show the progression:
#------------------------------------------------------------------
# Extract lines from the wget file,  containing    href=
grep "href=" gatherInfoTutorial.txt > gatherInfoHREF1.txt
# Many  href=  lines, this is just two of them.
#    <h2 class="wsite-content-title" style="text-align:center;"><font size="4"><a href="http://www.ncterry.com/contact.html">Contact</a></font></h2>
#    <link href='//fonts.googleapis.com/css?family=Lato:400,300,300italic,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
#-------------------------------------------------
# Full output
: '
                <link id="wsite-base-style" rel="stylesheet" type="text/css" href="//cdn2.editmysite.com/css/sites.css?buildTime=1557256733" />
	<link rel="stylesheet" type="text/css" href="//cdn2.editmysite.com/css/old/fancybox.css?1557256733" />
	<link rel="stylesheet" type="text/css" href="//cdn2.editmysite.com/css/social-icons.css?buildtime=1557256733" media="screen,projection" />
	<link rel="stylesheet" type="text/css" href="/files/main_style.css?1557267726" title="wsite-theme-css" />
	<link href='//fonts.googleapis.com/css?family=Lato:400,300,300italic,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
	<link href='//fonts.googleapis.com/css?family=Crimson+Text:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
	<link href='//fonts.googleapis.com/css?family=Montserrat:400,700&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
	<link href='//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css' />
                        {"navigation\/item":"<li {{#id}}id=\"{{id}}\"{{\/id}} class=\"wsite-menu-item-wrap\">\n\t<a\n\t\t{{^nonclickable}}\n\t\t\t{{^nav_menu}}\n\t\t\t\thref=\"{{url}}\"\n\t\t\t{{\/nav_menu}}\n\t\t{{\/nonclickable}}\n\t\t{{#target}}\n\t\t\ttarget=\"{{target}}\"\n\t\t{{\/target}}\n\t\t{{#membership_required}}\n\t\t\tdata-membership-required=\"{{.}}\"\n\t\t{{\/membership_required}}\n\t\tclass=\"wsite-menu-item\"\n\t\t>\n\t\t{{{title_html}}}\n\t<\/a>\n\t{{#has_children}}{{> navigation\/flyout\/list}}{{\/has_children}}\n<\/li>\n","navigation\/flyout\/list":"<div class=\"wsite-menu-wrap\" style=\"display:none\">\n\t<ul class=\"wsite-menu\">\n\t\t{{#children}}{{> navigation\/flyout\/item}}{{\/children}}\n\t<\/ul>\n<\/div>\n","navigation\/flyout\/item":"<li {{#id}}id=\"{{id}}\"{{\/id}}\n\tclass=\"wsite-menu-subitem-wrap {{#is_current}}wsite-nav-current{{\/is_current}}\"\n\t>\n\t<a\n\t\t{{^nonclickable}}\n\t\t\t{{^nav_menu}}\n\t\t\t\thref=\"{{url}}\"\n\t\t\t{{\/nav_menu}}\n\t\t{{\/nonclickable}}\n\t\t{{#target}}\n\t\t\ttarget=\"{{target}}\"\n\t\t{{\/target}}\n\t\tclass=\"wsite-menu-subitem\"\n\t\t>\n\t\t<span class=\"wsite-menu-title\">\n\t\t\t{{{title_html}}}\n\t\t<\/span>{{#has_children}}<span class=\"wsite-menu-arrow\">&gt;<\/span>{{\/has_children}}\n\t<\/a>\n\t{{#has_children}}{{> navigation\/flyout\/list}}{{\/has_children}}\n<\/li>\n"},
        <a href="/">
                                                href="/"
                                                href="/data.html"
                                                href="/code.html"
                                                href="/articles.html"
                                                href="/contact.html"
                                                href="/index1.html"
          <div class="nav membership-cart"><span id="member-login" class="wsite-custom-membership-wrapper"><a href="#" id="wsite-nav-login-a"></a></span></div>
	<h2 class="wsite-content-title" style="text-align:center;"><font size="4"><a href="http://www.ncterry.com/">Home</a></font></h2>
	<h2 class="wsite-content-title" style="text-align:center;"><font size="4"><a href="http://www.ncterry.com/data.html">Data</a></font></h2>
	<h2 class="wsite-content-title" style="text-align:center;"><font size="4"><a href="http://www.ncterry.com/code.html">Code</a></font></h2>
	<h2 class="wsite-content-title" style="text-align:center;"><font size="4"><a href="http://www.ncterry.com/articles">Articles</a></font></h2>
	<h2 class="wsite-content-title" style="text-align:center;"><font size="4"><a href="http://www.ncterry.com/contact.html">Contact</a></font></h2>
                                                href="/"
                                                href="/data.html"
                                                href="/code.html"
                                                href="/articles.html"
                                                href="/contact.html"
                                                href="/index1.html"

'
#--------------------------------------------------

# Then Split those  href=   lines using   /    delimiter
# Not all  href=  lines will follow this 3rd field for the server, but most will. Be careful.
# The 3rd field should contain the server name
grep "href=" gatherInfoTutorial.txt | cut -d"/" -f3 > gatherInfoHREF2.txt
#	www.ncterry.com
#	fonts.googleapis.com
#----------------------------------------------------
: '
	files
	fonts.googleapis.com
	fonts.googleapis.com
	fonts.googleapis.com
	fonts.googleapis.com
	id}} class=\"wsite-menu-item-wrap\">\n\t<a\n\t\t{{^nonclickable}}\n\t\t\t{{^nav_menu}}\n\t\t\t\thref=\"{{url}}\"\n\t\t\t{{\


	span><
	www.ncterry.com
	www.ncterry.com
	www.ncterry.com
	www.ncterry.com
	www.ncterry.com

'
# ---------------------------------------------------
# Now do the same thing, but add a 2nd grep to just sort out the ncterry.com
# This does nothing for us really, but is just a great example of how to refine your findings.
grep "href=" gatherInfoTutorial.txt | cut -d"/" -f3 | grep "www.ncterry.com" > gatherInfoHREF3.txt
#----------------------------------------------------
: '
	www.ncterry.com
	www.ncterry.com
	www.ncterry.com
	www.ncterry.com
	www.ncterry.com

'
#----------------------------------------------------
