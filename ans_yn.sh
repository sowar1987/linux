#!/bin/bash
# Program:
#	This program shows the user'choice	
# History:
# 2020/01/18 sowar First Release
PATH=/bin:/sbin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:~/.local/bin:~/bin:/usr/local/git/bin
export PATH
read -p "Please input (Y/N): " yn
[ "${yn}" == "Y" -o "${yn}" == "y"  ] && echo "OK, Continue" && exit 0
[ "${yn}" == "N" -o "${yn}" == "n"  ] && echo "Oh, Interrupt" && exit 0
echo -e "\nI don't know what your choice is "&& exit 0
