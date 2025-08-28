#!/bin/bash


if [ ${1,,} = mark ]; then
	echo "You are my boss. Welcome!!!"
elif [ ${1,,} = help ]; then
	echo "Just enter your username."
else
	echo "I don't know who you are."
fi

