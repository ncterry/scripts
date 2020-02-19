#!/bin/bash
#------------------------------------------
#---Made by:   ./1scriptmaker.sh
#---This is:   bashTrap.sh
#------------------------------------------

: '
----- A built in bash command that is used to execute a command when 
---shell receives any signal is called a 'trap'
---There are many signal available in bash, the most common:  

CTRL+C = SIGINT
To View list of trap:
	# trap -l
'
# ---------------------------------------------------


# Set a trap for SIGINT signals
# SIGINT = ctrl c
trap "echo CTRL+c  Will not exit with this trap." SIGINT
#
# trap - does allow ctrl+c to exit
#trap - SIGINT






# Display message to generate SIGTERM
echo "Press CTRL+Z to stop the process."

# Initialize the counter var
i=1

# Declare infinite loop
while true
do
	echo "Running the loop. Round: $i."
	((i++))
	sleep 1
done
#!/bin/bash
#------------------------------------------
#---Made by:   ./1scriptmaker.sh
#---This is:   bashTrap.sh
#------------------------------------------
