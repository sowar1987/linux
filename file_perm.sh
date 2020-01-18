#!/bin/bash
# Program:
#	User inputs a filename,program will check the following:
#	1.) exist? 2.)file/directory? 3.) file permissions
# History:
# 2020/01/18 sowar First Release
PATH=/bin:/sbin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:~/.local/bin:~/bin:/usr/local/git/bin
export PATH

echo -e "Please input a filename, I will check the filename's type and permission.\n\n"

read -p "Please input a filename:" filename  

test -z ${filename} && echo "You must input a filename" && exit 0

test ! -e ${filename} && echo "The filename '${filename}' DO NOT EXIST" && exit 0

test -f ${filename} && filetype="regulare file"
test -d ${filename} && filetype="directory"
test -r ${filename} && perm="readable"
test -w ${filename} && perm="${perm} writable"
test -x ${filename} && perm="${perm} executable"
echo -e "The filename:${filename} is a ${filetype}"
echo -e "And the permissions for you are : ${perm}"
