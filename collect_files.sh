#!/bin/bash
input=$1
output=$2
find "$input" -type f -exec cp {} "$output" \;
#ссылка на статью откуда брал части кода - https://stackoverflow.com/questions/33809986/comparing-file-names-and-md5sums-of-multiple-files-in-linux
