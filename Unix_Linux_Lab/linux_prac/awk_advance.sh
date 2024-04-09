#!/bin/bash

# Advanced awk program
# Usage: ./advanced_awk.sh file

file = $1

if [ ! -f "$file" ]; then
   echo "File not found!"
   exit 1
fi

awk -F ',' 'BEGIN { sum=0; count=0; min=999999; max=-999999 } 
            { 
                sum+=$3; 
                count++; 
                if ($3 < min) min = $3; 
                if ($3 > max) max = $3; 
            } 
            END { 
                print "Total records processed: ", count; 
                print "Total sum: ", sum; 
                print "Average: ", sum/count; 
                print "Minimum value: ", min; 
                print "Maximum value: ", max; 
            }' "$file"
