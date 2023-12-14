#!/bin/bash

ID=$(id -u)

if [ ID -ne 0 ]
then 
    echo "ypu are not a root user make sure you are a root user"
    exit 1
else 
    echo "you are a root user "
fi 

yum install git -y

if [ $? -e 0 ]
then 
    echo "sucessfully installed the git"
else
    echo "installation is failed"
fi
