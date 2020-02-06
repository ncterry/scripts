#!/bin/bash
#----------
: '
Terminal:   # declare -p
- This returns a huge amout of variables/icons in terminal.

In Terminal, you can declare a variable for the whole system:
Example:	# declare myvariable=22

Now if you run # declare -p
You will also see   myvariable=22 at the bottom of the return.
'
#------------------------------------------
#
# declare a read-only variable in the system
declare -r pwdfile=/etc/passwd	# -r means read-only
echo $pwdfile   #declared var, andThis will print out     /etc/passwd    in Terminal.
#
#
echo "----------------------"
# Change declaration variable ERROR
# Remember, we set var to   -r   read-only. So it cannot be changed now.
pwdfile=/etc/abc.txt
