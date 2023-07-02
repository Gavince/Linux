#!/bin/bash
# Desc: 计算表达式参数
# Usage: ./02.calcuate_num.sh
# Name: 
# Update: 202200809


echo "$0 $@ $* $# $1 $2"
for arg in "$@"
do	

	key=$(echo $arg | cut -f1 -d=)
	val=$(echo $arg | cut -f2 -d=)
	echo "$key, $val"
	case $key in 
		X)
			x=$val;;
		Y)
			y=$val;;
		*)
	esac
done
let result=$x+$y
echo "x+y=$[x+y], result=$result"
