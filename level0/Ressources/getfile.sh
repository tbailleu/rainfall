#!/bin/zsh

dir=$(dirname $0)
rm $dir/level0
echo -e "\e[91mPassword for level0 :\e[92m level0 \e[0m"
scp level0@rain:level0 $dir/level0
