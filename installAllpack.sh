#!/bin/bash

# 检查是否提供了文件名参数
if [ $# -ne 1 ]; then
    echo "Usage: $0 <file>"
    exit 1
fi

# 检查文件是否存在
if [ ! -f "$1" ]; then
    echo "Error: File '$1' not found."
    exit 1
fi

# 逐行读取文件，并使用paru安装每个软件包
while IFS= read -r package; do
    if [ -n "$package" ]; then
        paru -S --noconfirm "$package"
    fi
done < "$1"

echo "All packages installed successfully."
