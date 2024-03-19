#!/bin/bash
echo "Check whether root user or not"
userid=$(id -u)

if [ $userid -ne 0 ]
then
    echo "execute command as root user"
else
    sh sudo yum install mysql -y
fi