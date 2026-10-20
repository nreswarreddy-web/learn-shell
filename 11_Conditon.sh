#!/bin/bash

user_id=$(id_u)
if [user_id -ne 0]; then
 echo "please run this script with sudo access"
 exit 1
 f1
 echo "processing..."
 dnf install nginx -y