#!/bin/bash

ID=$(id -u)

if [ $ID -e 0 ]
then
    echo "your a root user you can install the package"
else
    echo "your not a root user you cannot install the packages"
fi

yum install mysql -y
