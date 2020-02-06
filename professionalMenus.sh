#-----------------------
#!/bin/bash
#-----------------------
# Work with a select-loop
# 	./professionalMenues.sh
# We will be in a never ending loop to select 1,2,3,4,5 or Error.
#
select car in BMW Mercedes Tesla Rover Toyota
do
	case $car in
	BMW) #----------------------------
		echo "BMW Selected";;
	Mercedes) #-----------------------
		echo "Mercedes Selected";;
	Tesla) #--------------------------
		echo "Tesla Selected";;
	Rover) #--------------------------
		echo "Rover Selected";;
	Toyota) #-------------------------
		echo "Toyota Selected";;
	*) #--------------------------------------------
		echo "Error: Please select between 1-5";;
	esac #------------------------------------------
done #--------------------------------------------------
