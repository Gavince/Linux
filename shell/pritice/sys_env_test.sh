#!/bin/bash

echo "\$0=$0"
echo "\$#=$#"
echo "\$*=$*"
echo "\$@=$@"
echo "\$1=$1"
echo "\$2=$2"
echo "\$10=$10"
echo "\$11=$11"
echo "\$12=$12"
for i in "$@"
do 
echo $i
done
