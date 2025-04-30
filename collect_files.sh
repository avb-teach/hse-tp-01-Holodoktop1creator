#!/bin/bash
if [ "$1" = "--max_depth" ]; then
    max_depth=$2
    input=$3
    output=$4
else
    max_depth=""  # Без ограничения глубины
    input=$1
    output=$2
fi

if [ -n "$max_depth" ]; then
    find "$input" -mindepth 1 -maxdepth "$max_depth" -type f -exec cp {} "$output" \;
else
    find "$input" -type f -exec cp {} "$output" \;
fi
