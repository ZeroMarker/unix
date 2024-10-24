# count 

# bool
index($0, "[mysql]"){
	print
	while((getline var) > 0) {
		# match []
		if(var ~ /\[.*\]/){
			exit
		}
		print var
	}
}

# getline return value
# >0 successful
# =0 EOF
# <0 failed

# awk -f 1.awk 1.txt