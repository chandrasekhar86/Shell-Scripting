#!/bin/bash
echo "Check whether root user or not
id
if [ $id -nq 0 ]
then 
    echo "execute command as root user"
else
    sh sudo yum install mysql -y
fi