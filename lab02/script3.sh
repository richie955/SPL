#!/bin/bash

if [[ -z "$1" || -z "$2" ]]; then
echo "arguments not Given."
exit 1
fi

file="$1"
type="$2"

if [ ! -f  "$file" ] ; then
echo "file not found"
exit 1
fi

case $type in
    -E)
    echo "preprocessing.."
    gcc -E "$file" -o "${file%.*}.i"
    if [ $? -eq 0 ]; then
    echo "preprocessing complete"
    else
    echo "failed"
    exit 1
    fi
    ;;
    -S)
    echo "generating assembly..."
    gcc -S "$file" -o "${file%.*}.s"
    if [ $? -eq 0 ]; then
    echo "assembly code generated"
    else
    echo "failed"
    exit 1
    fi
    ;;

    -c)
    echo "compiling object file.."
    gcc -c "$file" -o "${file%.*}.o"
     if [ $? -eq 0 ]; then
            echo "Object file created. Output: ${file%.*}.o"
        else
            echo "Object file compilation failed."
            exit 1
        fi
        ;;
    *)
    echo "enter valid type"
    exit 1
    ;;
esac


