#!/bin/bash
#----------
# WHILE LOOP
# Number starts at while, and increases by 1 until it is not less that 10
# This will print out:
#	1
#	2
#	3
#	4
#	5
#	6
#	7
#	8
#	9
#
#-------
echo "While Loop"
number=1
while [ $number -lt 10 ]
do
	echo "$number"
	number=$(( number+1 ))
done
# -----------------------
# -----------------------
# -----------------------
# -----------------------
#
# UNTIL LOOP - basically the same as a while loop
echo -e "-----------\nUntil Loop"   #echo -e     (allows for \n line break)
number=1
until [ $number -ge 10 ]
do
	echo "$number"
	number=$(( number+1 ))
done
# -----------------------
# -----------------------
# -----------------------
# -----------------------
#
# for loop with set values
# print 1 2 3 4 5
echo "-----------------------"
echo "loop with 5 numerical elements"
for i in 1 2 3 4 5
do
	echo $i
done
# -----------------------
# -----------------------
# -----------------------
# -----------------------
#
# for loop with range
# print 1 2 3 4 5 6 7 8 9 ...... 20
echo "-----------------------"
echo "loop with range 0-20"
for i in {0..20}
do 
	echo $i
done

# -----------------------
# -----------------------
# -----------------------
# -----------------------
#
# for loop with range, and increments
# print 0 3 6 9 12 15 18
echo "-----------------------"
echo "Loop range 0-20, and increment by 3"
for i in {0..20..3}
do
	echo $i
done

# -----------------------
# -----------------------
# -----------------------
# -----------------------
# traditional for loop
echo "------------------------"
echo "Traditional for loop"
for (( i=0; i<5; i++))
do
	echo $i
done
# -----------------------
# -----------------------
# -----------------------
# -----------------------
# break out of loop
# loop supposed to print to 10, but breaks out if greater than 5
echo "------------------------"
echo "Break out of loop at 5"
for (( i=0; i<10; i++ ))
do
	if [ $i -gt 5 ]
	then
		break
	fi
	echo $i
done
# -----------------------
# -----------------------
# -----------------------
# -----------------------
# skip elements without breaking loop
echo "-----------------------"
echo "Skip element 3 and 7 in loop."
for (( i=0; i<10; i++ ))
do
	if [ $i -eq 3 ] || [ $i -eq 7 ]
	then
		continue #continue basically means skip
	fi
	echo $i
done
# -----------------------
# -----------------------
# -----------------------
# -----------------------
#

# -----------------------
# -----------------------
# -----------------------
# -----------------------
#

#
