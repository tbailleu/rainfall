#!/bin/zsh

level=$1
dir=$(dirname $0)/../../bin

declare -A pass
pass[level0]=level0
pass[level1]=1fe8a524fa4bec01ca4ea2a869af2a02260d4a7d5fe7e7c24d8617e6dca12d3a
pass[level2]=53a4a712787f40ec66c3c26c1f4b164dcad5552b038bb0addd69bf5bf6fa8e77
pass[level3]=492deb0e7d14c4b5695173cca843c4384fe52d0857c2b0718e1a521a4d33ec02
pass[level4]=b209ea91ad69ef36f2cf0fcbbc24c739fd10464cf545b20bea8572ebdc3c36fa
pass[level5]=0f99ba5e9c446258a69b290407a6c60859e9c2d25b26575cafc9ae6d75e9456a

if [ "${pass[$level]}" = "" ]
then
	echo "$level don't exist"
	exit
fi
mkdir -p $dir
echo -e "\e[91mPassword for $level :\e[92m ${pass[$level]} \e[0m"
scp $level@rain:$level $dir/$level
