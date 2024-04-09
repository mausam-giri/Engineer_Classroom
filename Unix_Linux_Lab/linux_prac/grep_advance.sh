#!/bin/bash

# Advanced grep program
# Usage: ./advanced_grep.sh pattern directory

pattern=$1
directory=$2

if [ ! -d "$directory" ]; then
    echo "Directory not found!"
    exit 1
fi

grep -r "$pattern" "$directory"

