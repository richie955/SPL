#!/bin/bash

for arg in $@; do
file="$arg"
echo "name is: $file"
echo "object file supposed to check is ${file%.*}.o"
if [ -f ${file%.*}.o ]; then
echo "object file exists"
else
echo "object file DNE, creating one.."
echo "..."
echo "......"
echo "........."
gcc -c "$file" -o "${file%.*}.o"
echo "created in the directory SIRRR."
fi
done
