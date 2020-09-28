#!/bin/zsh

dir=$(dirname $0)
rm $dir/level2
echo -e "\e[91mPassword for level2 :\e[92m 53a4a712787f40ec66c3c26c1f4b164dcad5552b038bb0addd69bf5bf6fa8e77 \e[0m"
scp level2@rain:level2 $dir/level2
