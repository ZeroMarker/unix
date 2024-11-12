#!/bin/bash

LIST=(one two three four five)

echo $LIST
echo ${LIST[@]}
echo ${LIST[2]}

# in shell
# for item in $LIST; do echo -n $item | wc -c; done
