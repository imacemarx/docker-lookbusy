#!/bin/bash
nohup lookbusy -c 10-20 -m 128MB > /dev/null 2>&1 &

while true
do
    wget http://speed.hetzner.de/100MB.bin -O download.bin && rm download.bin
    random_hour=$(( ( RANDOM % 2 ) + 1 ))
    wait_time=$(( random_hour * 60 * 60 ))
    sleep $wait_time
done