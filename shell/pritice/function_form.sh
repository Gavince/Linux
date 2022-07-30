#!/bin/bash
# desc:用来描述函数的的正确写法

# 第一种写法
fun1()
{
	echo "Hello World!(fun1)"
}

# 第二种写法
function fun2()
{
	echo "Hello Shell!(fun2)"
}

input_info()
{
	input_var=""
	output_var=$1
	while [ -z $input_var ]
	do
		read -p "$output_var" input_var		
	done
	echo $input_var
}

fun3()
{
	read -p "$1" name
	if [ -z name ];then
	   fun3 $1
	else
		echo "$name"	
	fi
		
}

name=$(fun3 请输入姓名:)
sex=$(fun3 请输入性别:)
age=$(fun3 请输入年龄:)
echo "$name, $age, $sex"
#fun1
#fun2
#fun3
#input_info 请输入姓名:

