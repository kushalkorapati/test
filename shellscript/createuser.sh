#!/bin/bash

# user="$1"

# useradd $user
user=$@

for j in $user
do
    useradd $j 
    echo "hello $j user user name is created  by htis name $j"
done