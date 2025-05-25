#!/bin/bash

USERID=$(id -u )
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGS_FOLDER="/var/log/shellscript-logs"
SCRIPT_NAME=$( echo $0 |cut -d "." -f1)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"
PACKAGES=("mysql" "python" "nginx" "httpd")

mkdir -p $LOGS_FOLDER

echo -e "script started executing  at : $(date)" &>>$LOG_FILE
if [ $USERID -ne 0 ]

then 
echo -e"$R Error:: you need to run in root user $N"  | tee -a $LOG_FILE
else 
echo "run with root access" &>>$LOG_FILE
fi
VALIDATE(){
    if [ $? -ne 0 ]
 then 
 echo -e "installing $2 is ....$G sucess $N"  | tee -a $LOG_FILE
else 
echo -e "installing $2 is $r failuer $N"  | tee -a $LOG_FILE
exit 1 
fi
}

#for package in ${PACKAGES[@]}
for package in $@

do 
dnf list installed $PACKAGES &>>$LOG_FILE
 if [ $? -ne 0 ]
 then 
echo " $PACKAGE is installed .... going to install it "| tee -a $LOG_FILE
dnf install $PACKAGE -y &>>$LOG_FILE
VALIDATE $? "$packeges"
else 
echo -e "installing $2 is $r failuer $N"  | tee -a $LOG_FILE

fi
done




