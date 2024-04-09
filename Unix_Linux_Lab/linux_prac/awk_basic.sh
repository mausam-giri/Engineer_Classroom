#!/bin/bash

# Basic awk program
# Usage: ./basic_awk.sh file

file=$1

if [ ! -f "$file" ]; then
   echo "File not found!"
   exit 1
fi

awk '{print $1, $2}' "$file"
