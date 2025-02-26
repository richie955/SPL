#!/bin/bash

if [ -z $1 ]; then
echo "give file name"
elif [[ ! $1 =~ \.c$  ]]; then
echo "file is not c type"
elif [ ! -f $1 ]; then
echo "file doesnt exist"
fi

file="$1"

echo "preprocessing.. "

gcc -E "$file" -o "${file%.*}.i"
if [ ! $? -eq 0 ];then
echo "failed"
else
echo "generated file ${file%.*}.i"
fi

gcc -S "$file" -o "${file%.*}.s"
if [ ! $? -eq 0 ];then
echo "failed"
else
echo "generated assembly ${file%.*}.s"
fi

gcc -c "$file" -o "${file%.*}.o"
if [ ! $? -eq 0 ];then
echo "failed"
else
echo "generated object file ${file%.*}.o"
fi

gcc "$file" -o final_exec
if [ ! $? -eq 0 ];then
echo "failed"
else
echo "generated exec_file"
fi





