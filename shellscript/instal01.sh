#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "make sure that your are a root user"
else
    echo "yes you are a root user installing mysql"
fi

yum install mysql -y

