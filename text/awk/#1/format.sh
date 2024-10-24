## format whitespace

awk '{$1=$1;print}' 1.txt


awk 'BEGIN{OFS="\t"}{$1=$1;print}' 1.txt
