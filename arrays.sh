#!/bin/bash
#----------

# Create an array of cars
car=('BMX' 'Toyota' 'Honda' 'Rover')
#
# Print out all elements of array with @
echo "${car[@]}"
#---------------
#---------------
echo -e "-------------\nPrint out array elements individually."
echo "${car[0]}"
echo "${car[1]}"
echo "${car[2]}"
#---------------
#---------------
#
echo -e "----------------\nPrint out all numerical elements of array with !."
echo "${!car[@]}"   # 0 1 2
#---------------
#---------------
#
echo -e "----------------\nPrint how many elements are in the array with #"
echo  "${#car[@]}"
#---------------
#---------------
#
echo -e "----------------"
echo "Elements in array: ${#car[@]}"
echo "${car[@]}"
echo -e "----------------\nDelete element from array."
unset car[2]
echo "Elements in array: ${#car[@]}"
echo "${car[@]}"
#---------------
#---------------
#
echo -e "---------------\nInsert Honda back into array at spot 2"
car[2]='Honda'
echo "${car[@]}"
