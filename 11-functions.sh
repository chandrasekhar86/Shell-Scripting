#!/bin/bash
# our program goal is to install mysql and git

DATE=$(date +%F)
SCRIPT_FILE=$0
LOG_FILE=/tmp/$SCRIPT_FILE-$DATE.log
USERID=$(id -u)

VALIDATE (){
    if [ $1 -ne 0 ]
then
    echo "$2 Installation....FAILURE"
    exit 1
else
    echo "$2 Installation....SUCCESS"
fi
}

if [ $USERID -ne 0 ]
then
    echo "ERROR :: Please run this script with root access"
    exit 1
else
    echo "INFO: : You are root user"
fi
# it is our responsibility again to check installation is success or not
yum install mysql -y &>>$LOG_FILE
VALIDATE $? "MYSQL"

yum install git -y &>>$LOG_FILE
VALIDATE $? "GIT"