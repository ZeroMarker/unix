#!/bin/bash

showname(){
	echo hello $1
	if [ ${1,,} = mark ]; then
		return 0
	else
		return 1
	fi
}

showname $1
if [ $? = 1 ]; then
	echo "Someone unknown called function"
fi

# ./fun.sh test
# ./fun.sh mark

