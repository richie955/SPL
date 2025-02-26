#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <C-file>"
    exit 1
fi

file="$1"

if [ ! -f "$file" ]; then
    echo "File '$file' not found."
    exit 1
fi

> compile.log

gcc -E "$file" -o "${file%.*}.i" 2>&1 | tee -a compile.log
preprocess_errors=$(grep -c "error" compile.log)
preprocess_warnings=$(grep -c "warning" compile.log)

gcc -S "$file" -o "${file%.*}.s" 2>&1 | tee -a compile.log
assembly_errors=$(grep -c "error" compile.log)
assembly_warnings=$(grep -c "warning" compile.log)

gcc -c "$file" -o "${file%.*}.o" 2>&1 | tee -a compile.log
compilation_errors=$(grep -c "error" compile.log)
compilation_warnings=$(grep -c "warning" compile.log)

gcc "${file%.*}.o" -o "${file%.*}_exec" 2>&1 | tee -a compile.log
linking_errors=$(grep -c "error" compile.log)
linking_warnings=$(grep -c "warning" compile.log)

total_errors=$((preprocess_errors + assembly_errors + compilation_errors + linking_errors))
total_warnings=$((preprocess_warnings + assembly_warnings + compilation_warnings + linking_warnings))

echo "Total Errors: $total_errors"
echo "Total Warnings: $total_warnings"
echo "All errors and warnings are logged in compile.log"

>output.log
ls /nonexistent_directory 2>&1 | tee output.log
curl -I https://f1.com 2>&1 | tee curl_output.log

