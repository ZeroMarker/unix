# insert field
# "a b c d" -> "a b e f g c d"

echo "a b c d" | awk '{$2=$2" e f g";print}'

# a b c d e f g


echo "a    b   c d" | awk '{$2=$2;print}'

# a b c d
# $1 $2 field
# OFS rebuild $0
# OFS default value " "
