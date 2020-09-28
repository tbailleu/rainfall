#!/bin/zsh

dir=$(dirname $0)
rm $dir/level3
echo -e "\e[91mPassword for level3 :\e[92m 492deb0e7d14c4b5695173cca843c4384fe52d0857c2b0718e1a521a4d33ec02 \e[0m"
scp level3@rain:level3 $dir/level3
