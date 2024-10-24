awk '$8!=200{arr[$1]++}END{for(i in arr){print arr[i],i}}' access.log | sort -k1nr | head -n 10
