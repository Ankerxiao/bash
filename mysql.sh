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
        sql="create table $2.$3(
             id int(4) not null primary key auto_increment,
             name char(20) not null,
             sex int(4) not null default '0',
             degree double(16,2),
             address char(100) not null)"
        ;;
    des_table)
        sql="desc $2.$3"
        ;;
    select)
        sql="select * from $2.$3"
        ;;
    delete)
        sql="delete from $2.$3 where id=$4"
        ;;
    insert)
        sql="insert into $2.$3(username,password) values('$4','$5')"
        ;;
    update)
        sql="update $2.$3 set username='$3',password='$4' where id='$4'"
        ;;
    delete_table)
        sql="drop table $2.$3"
        ;;
    delete_database)
        sql="drop database $2"
        ;;
esac
$conn -e "$sql"
