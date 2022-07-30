#!/bin/bash
# desc:判断一个文件或者目录是否存在!

if [ $# -eq 0 ];then
	echo "尚未输入任何文件或目录"
	echo "用法：$0 [file|docu]"
fi

if [ -f $1 ];then
	echo "文件存在"
	ls -l $1
else
	echo "没有该文件"
fi


