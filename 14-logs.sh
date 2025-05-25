#!/bin/bash

USERID=$(id -u )
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGS_FOLDER="/var/log/shellscript-logs"
SCRIPT_NAME=$( echo $0 |cut -d "." -f1)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

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

dnf list installed mysql &>>$LOG_FILE
if [ $? -ne 0 ]
then 
echo "my sql not instelled  going to intall it" | tee -a $LOG_FILE
dnf install mysql -y &>>$LOG_FILE
VALIDATE $? "mysql"
else 
echo -e "my sql $Y alredy installed nothimg to do $N"  | tee -a $LOG_FILE
fi

dnf list installed python3 &>>$LOG_FILE
if [ $? -ne 0 ]
then 
echo "my sql not instelled  going to intall it"  | tee -a $LOG_FILE
dnf install python3 -y &>>$LOG_FILE
VALIDATE $? "python3"
else 
echo -e "python3 $Y alredy installed $N nothimg to do" | tee -a $LOG_FILE
fi

dnf list installed nginx &>>$LOG_FILE 
if [ $? -ne 0 ]
then 
echo "my sql not instelled  going to intall it"  | tee -a $LOG_FILE
dnf install nginx -y &>>$LOG_FILE
VALIDATE $? ""nginx
else 
echo -e  "nginx   $R alredy installed $N nothimg to do" | tee -a $LOG_FILE
fi

