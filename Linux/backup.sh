#!/bin/bash/

# backup of home directory
tar cvf /var/backup/home.tar /home

mv /var/backup/home.tar /var/backup/home.07202021.tar

tar cvf /var/backup/system.tar /home

ls -ls /var/backup > /var/backup/file_report.txt 

free -h > /var/backup/disk_report.txt


