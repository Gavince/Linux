#/bin/bash
# desc: 判断给定文件是否存在，并对输入的两个参数值进行比较运算

read -p "Enter a filename: "  filename
# 输出当前脚本基本信息
echo -e "shell name: $0 \nshell params: $#"

# 判断文件是否存在

if [ -e $filename ];then
	echo "$filename existing!"
# 判断数字大小
elif [ $1 -lt $2 ];then
	echo -e ""$1" = $1"
	for val in $@:
	do
		echo "param:$val"
	done
else
	echo -e ""$2" = $2"
fi

exit 0
