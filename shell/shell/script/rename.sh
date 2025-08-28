#!/bin/bash

# 使用通配符批量创建 5 个文件:
touch file{1..5}.txt

# 批量将这 5 个后缀为 .txt 的文本文件重命名为以 .c 为后缀的文件:
rename 's/\.txt/\.c/' *.txt

# 批量将这 5 个文件，文件名和后缀改为大写:
rename 'y/a-z/A-Z/' *.c
