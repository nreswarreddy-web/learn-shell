#!/bin/bash

disk_usage=$( df -hT | grep -v Filesystem )
useage_thersold=20

while IFS= read -r line 
do
  usage=$(echo $line | awk '{print $6}' | cut -d "%" -f1)
  partitons=$(echo $line | awk '{print $7}')

  if [ "$usage" -ge "$useage_thersold" ]; then
   message+="High desk usage of $partitons: $usage \n"

   #\n - new line 

  fi
done  <<< $"disk_usage"