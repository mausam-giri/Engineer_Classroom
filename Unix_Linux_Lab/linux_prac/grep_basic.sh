#!/bin/bash

# Basic grep program
# Usage: ./basic.sh pattern file


pattern=$1
file=$2

if [ ! -f "$file" ]; then
   echo "File not found!"
   exit 1
fi

grep "$pattern" "$file"
