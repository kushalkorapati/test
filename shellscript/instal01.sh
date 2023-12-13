#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "make sure that your are a root user"
    exit 1
else
    echo "yes you are a root user installing mysql"
fi

yum install mysql -y

if [ $! -ne 0 ]
then
    echo "you get the error "
    extit1
else
    echo "you are sucessfully installing the package"
fi

