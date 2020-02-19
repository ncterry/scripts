#!/bin/bash
#------------------------------------------
#---Made by:   ./1scriptmaker.sh
#---This is:   passArgsToScript.sh
#------------------------------------------

# Passing arguments to a bash script
# Execute with 3 args
#	./passArgsToScript.sh Nate Zach Pat

# Use predefined variables to access passed arguemtns
# Simply echo those args to the shell
newline="\n----------"

echo -e $newline
echo "echo \$1 \$2 \$3 = "$1 $2 $3

# We can also store arguments from bash command line in a special array
echo -e $newline
echo "args can be all stored with:   args=(\"\$@\")"
args=("$@")


# echo arguments to the shell
echo -e $newline
echo "\${args[0]} \${args[1]} \${args[2]} = " ${args[0]} ${args[1]} ${args[2]}


# Use $@ to print out all arguements at once
echo -e $newline
echo "echo \$@    will print out all of the args"
echo $@


# Use $# variable to print out the number of args passed.
echo -e $newline
echo "Number of arguments passed = " $#
