# https://zhuanlan.zhihu.com/p/678933775
gcc -g test.c -o test

gdb test

l 0
# list

r

dprintf 6,"Hello, World!\n"
dprintf 11,"i = %d, a = %d, b = %d\n",i,a,b
dprintf 14,"Leaving! Bye bye!\n"

i b
# info breakpoints
# info breakpoint <breakpoint-number>
