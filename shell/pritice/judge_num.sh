#!/bin/bash
# Desc:判断一个数是否为素数
# Name:judge_num.sh
# Usage: bash ./judge_num.sh
# Update: 20220803

read -p "请输入一个待判断的数字：" num

[ $num -eq 1 ]&& echo "$num 是一个质数" && exit
[ $num -eq 2 ]&& echo "$num 是一个质数" && exit

for i in `seq 2 $[$num - 1]`
do 
	[ $[$num%$i] -eq 0 ]&& echo "$num 不是一个质数" && exit
done

echo "$num 是一个质数!"
