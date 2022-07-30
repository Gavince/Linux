#!/bin/bash
#打印菜单
menu(){
cat <<-END
    h    显示命令帮助
    f    显示磁盘分区
    d    显示磁盘挂载
    m    查看内存使用
    u    查看系统负载
    q    退出程序
    END
}
menu
while true
do
read -p "请输入你的操作[h for help]:" var1
case $var1 in
    h)
    menu
    ;;
    f)
    read -p "请输入你要查看的设备名字[/dev/sdb]:" var2
    case $var2 in
        /dev/sda)
        fdisk -l /dev/sda
        ;;
        /dev/sdb)
        fdisk -l /dev/sdb
        ;;
    esac
    ;;
    d)
    lsblk
    ;;
    m)
    free -m
    ;;
    u)
    uptime
    ;;
    q)
    exit
    ;;
esac
done
