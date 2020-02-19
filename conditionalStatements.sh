
#!/bin/bash
#----------------
# if/then conditional
#
# There are several types of comparisons
#    =   or   -eq
#    >   or   -gt
#   !=   or   -ne
# These use different formats [  ]  or  (( ))
# Note	&&   can be done as   -a    
#declare variable
count=8

if [ $count -eq 8  ]
then
	echo "the first condition is true"
elif (( $count <= 7 ))
then
	echo "the second condition is true"

else
	echo "both conditions are false"
fi
#
#-----------------------------------
#-----------------------------------
# && operator
age=16
#
if [ $age -eq 18 ] && [ $age -lt 40]
then
	echo "Age meets both of the first requirements"
fi
#--------------
if [ $age -eq 16  -a  $age -lt 40 ]
then
	echo "Age meets both of the second requirements"
fi
#----------------------------------
#----------------------------------
# ||  -o    OR operator
if [ $age -eq 20 ] || [ $age -lt 5 ]
then 
	each "Age meets the first OR statement"
elif [ $age -eq 20 -o $age -gt 5 ]
then
	echo "Age meets one of the second OR statment"
fi
#----------------------------------
#----------------------------------
