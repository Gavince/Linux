#!/bin/bash
#Name:
#Usage:
#Desc:
#Update:

function menu(){
cat <<-EOF
1. mysql
2. web
3. app
4. exit
EOF
}

function log(){

	echo "张万玉"
}


PWD=$(pwd)
ROOT=$(dirname ${PWD})
if [ -f $PWD ];then
	echo "True"
elif [ 0 -eq 0 ];then
 	echo "$ROOT"
else
	echo "输出!"
fi
echo "${PWD}"

menu
log
