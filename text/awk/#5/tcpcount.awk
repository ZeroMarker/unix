# filter
netstat -tnap 2>/dev/null |\
awk '
    /^tcp/{
        arr[$6]++
    }
    END{
        for(state in arr){
            print arr[state] ":" state
        }
    }
'


netstat -tna | awk '/^tcp/{arr[$6]++}END{for(state in arr){print arr[state] ": " state}}'