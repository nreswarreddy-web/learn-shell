#!/bin/bash

Start_time=$(date +%s)
echo "Script start time at :$Start_time "

sleep 10

end_time=$(date +%s)
echo "Script end time at :$end_time"

tota_time=$(($end_time-$Start_time))

echo "total time takne : $tota_time seconds "

