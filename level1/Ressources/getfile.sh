#!/bin/zsh

dir=$(dirname $0)
rm $dir/level1
echo -e "\e[91mPassword for level1 :\e[92m 1fe8a524fa4bec01ca4ea2a869af2a02260d4a7d5fe7e7c24d8617e6dca12d3a \e[0m"
scp level1@rain:level1 $dir/level1
