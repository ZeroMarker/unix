awk '{arr[$0]++}END{for(i in arr){print arr[i],i}}' 3.txt

