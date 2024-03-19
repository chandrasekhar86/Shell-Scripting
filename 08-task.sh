#!/bin/bash
echo "Check whether root user or not
USER=$(id -u)
if [ $USER -ne 0 ]
then 
    echo "execute command as root user"
else
    sh sudo yum install mysql -y
fi