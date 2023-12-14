#!/bin/bash

ID=$(id -u)

if [ ID -ne 0 ]
then 
    echo "ERROR : You are not a root user "
    exit 1
else
    echo "you are a root user"
fi

echo "all the args passed $@"