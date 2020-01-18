#!/bin/bash
# Program:
#	User input a scale number to calculate pi number.
# History:
# 2020/01/18 sowar First Release
PATH=/bin:/sbin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:~/.local/bin:~/bin:/usr/local/git/bin
export PATH
echo -e "This program will calculate pi value. \n"
echo -e "You should input a float number to calculate pi value. \n"
read -p "The scale number (10~10000)?" checking
num=${checking:-"10"}
echo -e "Starting calculate pi value. Be patient."
time echo "scale=${num};4*a(1)"| bc -lq 
