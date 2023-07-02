#! /bin/bash
# Name: if_tmp.sh
# Author: zhangwanyu
# Desc: 测试脚本
# Update: 20230106
# Usage:
#
#	bash if_tmp.sh
#


for e2e in "e2e_1" "e2e_2"
do
	for cor in "cor_1" "cor_2"
		e2e_version=`echo ${cor} | awk -F "_" '{print $NF}'`
		#echo "$cor_version, $e2e_version"
		if [[ ${cor_version} -ne ${e2e_version} ]];then
			echo "current version ${e2e}. ${cor}"
		fi
	done
done
