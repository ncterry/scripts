#!/bin/bash
#------------------
# Execute this file:
#	./caseStatements2.sh TOYOTA
#
# This case statement file is case sensitive.
# If the cars are not all capitals, you get the *
#------------------------------------------------
#
car=$1
#-----
case $car in
	"BMW")
		echo "It's a BMW" ;;
	"MERCEDES")
		echo "It's a Mercedes" ;;
	"TOYOTA")
		echo "It's a Toyota" ;;
	"HONDA")
		echo "It's a Honda" ;;
	*)
		echo "We don't know that car name" ;;
esac
