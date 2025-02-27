#!/bin/bash
if [ -z "$1" ]; then
echo "enter a filename";
exit 1;
fi

file="$1"
base_name="${file%.c}"

if [[ ! $file =~ \.c$ ]]; then
echo "enter a valid c file"
exit 1
fi

if [ ! -f "$file" ]; then
echo "the file doesnt exist"
exit 1
fi

echo "preprocessing"
gcc -E $file -o "$base_name.i"
echo "preprocessed"


echo "the c file entered is $file and the day today is $(date +%A)"

