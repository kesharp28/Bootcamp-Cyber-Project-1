#!/bin/bash

echo "System Info" >> ~/research/sys_info.txt
date >> ~/research/sys_info.txt
echo "Machine Type Info:" >> ~/research/sys_info.txt
echo $MACHTYPE >> ~/research/sys_info.txt
echo -e "Uname info: $(uname -a) \n" >> ~/research/sys_info.txt
echo -e "IP Info: $(ip addr | head -9 | tail -1) \n" >> ~/research/sys_info.txt
echo "Hostname: $(hostname -s) " >> ~/research/sys_info.txt
echo -e "/n777 Files:" >> ~/research/sys_info.txt
sudo find /home -type f -perm 777 >> ~/research/sys_info.txt
#List top 10 processes
echo -e "\nTop 10 Processes" >> ~/research/sys_info.txt
ps aux --sort -%mem | awk {'print $1, $2, $3, $4, $11'} | head >> ~/research/sys_info.txt

files=('/etc/passwd' '/etc/shadow')

#for loop that prints out the permissions of each file in my file list
echo -e "\nThe permissions for sensitive /etc files: \n" >> $output
for file in ${files[@]}
do
ls -l $file >> $output
done



