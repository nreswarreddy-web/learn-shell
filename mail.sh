#!/bin/bash

to_team=$1
server_ip=$2
alert_type=$3
message=$4
to_address=$5
subject=$6

final_mesage=$(echo "$message" | sed 's/[][\/.^$*]/\\&/g')

 final_body=$(sed -e "s/TO_TEAM/$to_team/g"  -e "s/SERVER_IP/$server_ip/g" -e "s/ALERT_TYPE/$alert_type/g"  -e "s/MESSGE_BODY/$final_mesage/g"  -e "s/TO_ADDRESS/to_address/g"  template.html)

 {
echo "To: nreswarreddy@gmail"
echo "Subject: Test subject by shell script "
echo "Content-Type: text/html"
echo ""
echo "$final_body"
} | msmtp "$to_address"
