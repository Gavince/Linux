#!/bin/bash
# desc: 测试case语句的使用

# 输入菜单目录
order(){
cat << EOF

*****菜单目录*****
"写作"|"write"
"吃饭"|"eat"
"离开"|"leave"
"偷懒"|"睡觉"|"玩耍"
"帮助"|"help"
*******************

EOF
}

main(){
	order
	while true
	do
		read -p "请选择你要做的事情:" case_name
		case $case_name in
			"写作"|"write")
				echo "你可以进行创作了!"	
				;;
			"帮助"|"help")
				order
				;;
			"吃饭"|"eat")
				echo "下午饭可以吃了!"
				;;
			"离开"|"leave")
				echo "你可以离开整个系统了!"
				exit
				;;
			"偷懒"|"睡觉"|"玩耍")
				echo "你偷懒了!"
				;;
			* )
				echo "请输入正确的选择!"
				;;
		esac
	done
}

main
