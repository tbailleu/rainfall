#!/bin/zsh

dir=$(dirname $0)
rm $dir/level4
echo -e "\e[91mPassword for level4 :\e[92m b209ea91ad69ef36f2cf0fcbbc24c739fd10464cf545b20bea8572ebdc3c36fa \e[0m"
scp level4@rain:level4 $dir/level4
