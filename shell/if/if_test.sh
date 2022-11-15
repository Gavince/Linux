#!/bin/bash
PWD=$(pwd)
ROOT=$(dirname ${PWD})
if [ -f $PWD ]; then
	echo "True"
else
	
 	echo "$ROOT"
fi
echo "${PWD}"
