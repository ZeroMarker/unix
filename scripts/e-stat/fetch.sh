#!/bin/bash

# 确保 url.txt 文件存在
if [ ! -f url.txt ]; then
    echo "url.txt 文件不存在。"
    exit 1
fi

# 读取 url.txt 文件中的每一行，并对其执行 curl 命令
while IFS= read -r url
do
    curl "$url" | jq . > e-stat.json
done < "url.txt"
