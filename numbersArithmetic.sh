
#!/bin/bash
#-----------
#
#-----------------------------
#-----------------------------
#-----------------------------
#-----------------------------
echo 21+31	#Will just print this as as string
#---------------
#-----------------------------
#-----------------------------

echo "--------------------"
n1=4
n2=20
#
echo $(( n1 + n2 )) # simple addition
echo $(( n1 - n2 )) # simple subtraction.
echo $(( n1 * n2 )) # simple multiplication
echo $(( n1 / n2 )) # simple division
echo $(( n1 % n2 )) # simple modulus
#----------------------------
#----------------------------
#-----------------------------
#-----------------------------
echo "-----------------------"
#
echo $(expr $n1 + $n2 ) #Simple addition, different format.
echo $(expr $n1 - $n2 ) #simple subtraction, expression format
echo $(expr $n1 \* $n2 ) #simple multiplication, expression format
echo $(expr $n1 / $n2 ) #simple division, expression format
echo $(expr $n1 % $n2 ) #simple modulus, expression format
#-----------------------------
#-----------------------------
#-----------------------------
#-----------------------------
echo "-----------------------"
# hex values
# Example:	FF which equals 255 in decimal
#-----------
echo "Enter a Hex number of your choice:"
read hexNum
echo -n "The decimal value of $hexNum="
echo "obase=10; ibase=16; $hexNum" | bc  #bash calculator, may need: apt-get install bc
#-----------------------------
#-----------------------------
#-----------------------------
#-----------------------------

