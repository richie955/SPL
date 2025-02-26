#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <C-file>"
    exit 1
fi

file="$1"
output="${file%.*}_exec"

if [ ! -f "$file" ]; then
    echo "File '$file' not found."
    exit 1
fi

gcc -c "$file" -o "${file%.*}.o"

if [ $? -ne 0 ]; then
    echo "Compilation of $file failed."
    exit 1
fi

gcc "${file%.*}.o" -L. -lrichie -o main_exec

if [ $? -ne 0 ]; then
    echo "Linking with librichie.so failed."
    exit 1
fi

echo "Running the executable..."
./main_exec
