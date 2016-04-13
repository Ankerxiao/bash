#!/bin/bash

read -p "请输入用户名: " user
read -p "请输入密码: " -s password


if [ $user != "root" ]
then
    echo "\n用户名错误"
elif [ $password != "123456" ]
then
    echo -e "\n密码错误"
else
    echo -e "\n成功"
fi
 
