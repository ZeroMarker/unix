# chmod

chmod +x test.sh

# Linux GUI

apt install tasksel slim -y
apt install tigervnc-standalone-server
vncserver -localhost no
vncserver -list

kex --esm --ip -s

# Link file

echo "This is file1" > file1
ls -li    // --inode
ln file1 file2
cat file2

ls -s file1 file2

# Envirment Variable

env|sort>env.txt
set|sort>set.txt
export|sort>export.txt

vimdiff env.txt set.txt export.txt

# Trash

gio trash *.txt // move file to trash
ls ~/.local/share/Trash/files

# system info

uname -a

uname -r
## kernel version

neofetch

# Spd-say

spd-say "I am a robot."

# tldr

tldr -u

tldr view

# view

view main.conf

# Epoch Time
date +%s
