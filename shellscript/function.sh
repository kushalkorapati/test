#!/bin/bash
ID=$(id -u)

VALIDATE(){
    if [ $? -ne 0 ]
    then
        echo "ERROR : : Installing my SQl is failed"
        exit 1
    else
        echo "sucessfully my sql is installed"
    fi 

    
}
if [ ID -ne 0 ]
then
    echo "you are not a root user make sure that you are a root user"
    exit 1 
else 
    echo "you are a root user"
fi

 yum install mysql -y

 VALIDATE 

 yum install git -y
 
 VALIDATE 