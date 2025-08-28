#!/bin/bash

# Variable
NAME="sophomore"
AGE=12

echo ${NAME}
echo ${#NAME}		
# count the character

let AGE=${AGE}+1
echo ${AGE}


# Command
mcd (){
	mkdir -p "$1"
	cd "$1"		
}			
# $1 first argument 
# $0 self file NAME 	
# $? last return value
# $! last process PID	
# $$ shell pid	
# $# args

# source hello.sh	
# mcd test

# User Input
read -p "Enter your NAME: " NAME
echo "Hello, ${NAME}. Nice to meet you."
NAME="$1"
echo "$NAME"


# IF-ELSE
if [ "$NAME" == "Brad" ]
then
	echo "Your NAME is Brad"
elif [ "$NAME" == "Jack" ]
then
	echo "Your NAME is Jack"
else
	echo "Your NAME is NOT Brad or Jack"
fi

# Copmation
if [ "$num1" -gt "$num2" ]
then 
	echo "num1 is greater than num2"
else 
	echo "num1 is NOT greater than num2"
fi

# File
File="test.txt"
if [ -f "$FILE" ]
then
echo "This is a file"
else
echo "This is not a file"
fi
