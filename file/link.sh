# Link file

echo "This is file1" > file1
ls -li    // --inode
ln file1 file2
cat file2

ls -s file1 file2