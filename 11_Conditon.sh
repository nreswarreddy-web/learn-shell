#!/bin/bash

user_id=$(id -u)
if  [ $user_id -ne 0 ]; then
   echo "please run this script with sudo access"
   exit 1
 fi

validate(){
   if [ $1 -ne 0 ]; then 

   echo " $2......failed"
   exit 1

   else 
   echo " $1.... Sucess "

   fi
}
 
 echo " processing ...."

 dnf install mysql -y 
 validate $? "installation is done"

 echo " mysql installed......Finally"



