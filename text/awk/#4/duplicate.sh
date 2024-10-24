# separate by ?, count, count == 1
awk -F "?" '{arr[$2]=arr[$2]+1;if(arr[$2]==1){print}}' 2.txt

awk -F "?" '{arr[$2]++;if(arr[$2]==1){print}}' 2.txt

awk -F "?" '!arr[$2]++{print}' 2.txt

awk -F "?" '!arr[$2]++' 2.txt