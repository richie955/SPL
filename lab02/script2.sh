#!/bin/bash

if [ $# -eq 0 ];then
echo "list C source files"
exit 1
fi

for file in "$@"; do
if [ ! -f "$file" ];then
 echo "$file doesnt exist"
 exit 1
fi
done

for file in "$@"; do
obj_file="${file%.*}.o"
if [ ! -f "$obj_file" ] || [ "$file" -nt "$obj_file" ]; then
echo "Compiling File..."
gcc -c "$file" -o "$obj_file"
if [ $? -ne 0 ]; then
echo "compilation failed"
exit 1
fi
else
    echo "$file is up to date, skipping compilation."
  fi
done

echo "linking object files into project_executable.."
gcc -o project_exec *.o

if [ $? -eq 0 ]; then
echo "build success"
else
echo "linking failed"
exit 1
fi