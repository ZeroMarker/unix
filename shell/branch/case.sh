#!/bin/bash

case ${1,,} in
	mark | admin)
		echo "You are the boss"
		;;
	help)
		echo "Just input username"
		;;
	*)
		echo "You are not the boss"
esac

