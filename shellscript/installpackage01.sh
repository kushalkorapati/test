#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
if [ ID -ne 0 ]
then 
    echo "$R ERROR : You are not a root user $N"
    exit 1
else
    echo "$G you are a root user"
fi

echo "all the args passed $@"