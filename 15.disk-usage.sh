#!/bin/bash

disk_usage=$( df -hT | grep -v Filesystem )
usage_threshold=20
server_ip=$(curl http://169.254.169.254/latest/meta-data/local-ipv4)

while IFS= read -r line 
do
  usage=$(echo $line | awk '{print $6}' | cut -d "%" -f1)
  partitons=$(echo $line | awk '{print $7}')

  #if [ "$usage" -ge "$useage_thersold" ]; then
  if [ "$usage" -ge "$usage_threshold" ]; then
   message+="High desk usage of $partitons: $usage \n"

   #\n - new line 

  fi
done  <<< "$disk_usage"

echo -e "$message"

sh mail.sh "Devops Team" "$server_ip"  "High disk usage" "$messgae" "nreswarreddy@gmail.com" "WARNNING: High disk usage alrert"