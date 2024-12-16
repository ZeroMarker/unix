awk -F'["]' '/HREF/{print $2}' bookmarks_12_14_24.html | awk -F'/' '{print $3}' | sort | uniq -c | sort -nr > sort.txt

