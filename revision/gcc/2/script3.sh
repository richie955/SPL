#!/bin/bash
echo "enter file name and gcc flag"
read name flag

if [[ ! $name =~ \.c$ ]]; then
echo "file is not a valid c file."
exit 1

elif [[ ! -f $name ]]; then
echo "file not found"
exit 1

fi

if [[ $flag == '-E' ]];then
echo "preprocessing..."
gcc -E $name -o "${name%.c}.i"
echo "preprocessed."

elif [[ $flag == '-c' ]];then
echo "creating object file"
gcc -c $name -o "${name%.c}.o"
echo "created object file"

elif [[ $flag == '-S' ]];then
echo "creating assembly file.."
gcc -S $name -o "${name%.c}.s"
echo "created assembly file"

else
echo "give a valid flag, dumbass."
exit 1

fi
