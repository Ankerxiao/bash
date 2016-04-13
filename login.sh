#!/bin/bash

read -p "请输入用户名: " user
read -p "请输入密码: " password

if [ $user != "root" ]
then
    echo "用户名错误"
elif [ $password != "123456" ]
then
    echo "密码错误"
else
    echo "成功"
fi
 
