#!/bin/bash
if [ -z "$1" ]; then
echo "error enter an input"
exit 1
fi

file="$1"
if [[ ! "$file" =~ \.c$ ]]; then
echo "enter a valid c file"
exit 1
fi

if [ ! -f "$file" ]; then
echo "error file is not found"
exit 1
fi

echo "Compiling..."
gcc -c "$file" -o "${file%.*}.o"
if [ $? -eq 0 ]; then
echo "compilation success."
else
echo "compilation failed"
exit 1
fi

echo "making preprocessing file.."
gcc -E "$file" > "${file%.*}.i"
if [ $? -eq 0 ];then
echo "preprocessing file generated"
else
echo "preprocessing failed"
exit 1
fi

echo "creating assembly file.."
gcc -S "$file" > "${file%.*}.s"
if [ $? -eq 0 ]; then 
echo "created assembly file"
else
echo "assembly file creation failed"
fi

echo "creating executable.."
gcc "${file%.*}.o" -o final_exec
if [ $? -eq 0 ]; then 
echo "created executable"
else
echo "executable creation failed"
fi



