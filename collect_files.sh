#!/bin/bash
input=$1
output=$2
find "$input" -type f -exec cp {} "$output" \;
echo "Все файлы из $input скопированы в $output"
