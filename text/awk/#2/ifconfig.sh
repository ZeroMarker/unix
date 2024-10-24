# ifconfig IPv4

# match inet, match 127 start nor
ifconfig | awk '/inet / && !($2 ~ /^127/){print $2}' 

# read by paragraph
ifconfig | awk 'BEGIN{RS=""}NR==1{print}'
ifconfig | awk 'BEGIN{RS=""}!/^lo:/{print $6}'

# read by paragraph, field separation = new line, nor lo, select 2nd line,
ifconfig | awk 'BEGIN{RS="";FS="\n"}!/lo/{$0=$2;FS="";$0=$0;print $2}'
