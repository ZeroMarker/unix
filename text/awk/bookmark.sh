awk -F'["]' '/HREF/{print $2}' bookmark.html | awk -F'/' '{print $3}' | sort | uniq -c | sort -nr > sort.txt

