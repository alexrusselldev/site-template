#!/bin/bash

# $1 is Domain
# $2 is Email

crontab -l > mycron
#echo new cron into cron file
echo "00 09 * * 1-5 /home/ubuntu/scripts/run-letsencrypt.sh $1 $2" >> mycron
#install new cron file
crontab mycron
rm mycron