#!/bin/bash

ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

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
    fi
done