grep -E '^\([0-9]{3}\) [0-9]{3}-[0-9]{4}$|^[0-9]{3}-[0-9]{3}-[0-9]{4}$' file.txt

# ^,    line start
# \,    escape 
# [0-9],    digit
# {3},  number
# |,    or
# $,    line end
