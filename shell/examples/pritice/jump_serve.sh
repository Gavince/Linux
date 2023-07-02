#!/bin/bash
# desc: 现有的跳板机虽然实现了统一入口来访问生产服务器，yunwei用户权限太大可以操作跳板机上的所有目录文件，存在数据被误删的安全隐患，所以希望你做一些安全策略来保证跳板机的正常使用

menu()
{
cat <<-EOF
欢迎使用Jumper-server，请选择你要操作的主机：
1. DB1-Master
2. DB2-Slave
3. Web1
4. Web2
h. help
q. exit
EOF
}

trap "" 1 2 3 19
menu

while true
do
	read -p "请输入需要连接的跳板机:" host
	
	case $host in
		1|DB1)
			ssh root@10.0.0.1
			;;
		2|DB2)
			ssh root@10.0.0.2
			;;
		3|web1)
			ssh root@10.0.0.3
			;;
		h|help)
			clear;menu
			;;
		q|quit)
			exit
			;;
		*)
			;;
	esac
done

menu
