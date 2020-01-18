#!/bin/bash
# Program:
#	User inputs his first name and last name. Program shows his full name.
# History:
# 2020/01/18 sowar First Release
PATH=/bin:/sbin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:~/.local/bin:~/bin:/usr/local/git/bin
export PATH
read -p "Please input your first name:" firstname  
read -p "Please input your last name:" lastname
echo -e "\nYour full name is: ${firstname} ${lastname}"
