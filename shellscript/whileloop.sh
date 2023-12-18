#!/bin/bash

SOURCE_FILE="/tmp/shellscript-logs"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -d $SOURCE_FILE ]
then
    echo -e "$R Source directory : : $SOURCE_FILE file is not exists $N"
else 
    echo -e "$G Source file found $N"
fi

FILES_TO_DELETE=find $SOURCE_FILE -type f -mtime +12 -name "*.log"