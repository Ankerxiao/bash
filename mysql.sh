#!/bin/bash

conn="mysql -uroot -proot"

case $1 in
    show_databases)
        sql="show databases"
        ;;
    create_database)
        sql="create database $2"
        ;;
    show_tables)
        sql="show tables from $2"
        ;;
    create_table)
        #sql="use $2"
        sql="create table Class.MyClass(
             id int(4) not null primary key auto_increment,
             name char(20) not null,
             sex int(4) not null default '0',
             degree double(16,2))"
        ;;
    des_table)
        sql="use $2"
        sql="desc $3"
        ;;
    select)
        sql="select * from test.user"
        ;;
    delete)
        sql="delete from test.user where id=$2"
        ;;
    insert)
        sql="insert into test.user(username,password) values('$2','$3')"
        ;;
    update)
        sql="update test.user set username='$3',password='$4' where id='$2'"
        ;;
    delete_table)
        sql="drop table $2"
        ;;
    delete_database)
        sql="drop database $2"
        ;;
esac
$conn -e "$sql"
