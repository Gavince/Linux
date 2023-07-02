#!/bin/bash
# desc:打印1-100之间所有的奇数


SUM=0

for m in {1..100}
do
	n=$((m%2))
	if [ $n -eq 1 ];then
		echo "$m"
		let SUM=$SUM+$m
	fi
done

echo "the sum of {1..100}=$SUM!"
