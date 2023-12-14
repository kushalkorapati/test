#!/bin/bash

ID=$(id -u)
R='\033[0;31m'
Green='\033[0;32m'
White='\033[0;37m'

VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo  -e "$2....$R Failed $N"
    else
        echo  -e "$2....$G Scuess $N"
    fi

}


if [ ID -ne 0 ]
then 
    echo -e "$R ERROR : You are not a root user $N"
    exit 1
else
    echo "$G you are a root user"
fi

#echo "all the args passed $@"

for package in $@
do
    yum list installed $package
    if [ $? -ne 0 ]
    then
        yum install $package -y
        VALIDATE $? "Installation of $package"
    else
        echo "$package is allready installed...skip "
    fi
done