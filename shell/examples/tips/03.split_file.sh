#!/bin/bash
# Name:
# Usage:
# Update:

FILE_NAME=$1
data_nums=`wc -l $FILE_NAME`
file_nums=`expr $data_nums / 4`
echo "$file_nums"
#`split -l `
