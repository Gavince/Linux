#!/bin/bash
# Usage: ./01.sample_shell.sh
# Name: 01.sample_shell.sh
# Update: 20220808
# Desc: shell注释、while语句、echo输出等

: '
多行注释
多行注释
多行注释
'
# 单行注释
echo "不换行输出!"
for i in `seq 1 10`
do
    echo -n "$i"
done

echo -e  "\n换行输出"
for i in `seq 1 10`
do
    echo -e "$i"
done
