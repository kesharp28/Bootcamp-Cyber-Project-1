#!/bin/bash

## INSTRUCTIONS: Edit the following placeholder command and output filepaths
# For example: cpu_usage_tool > ~/backups/cpuuse/cpu_usage.txt
# The cpu_usage_tool is the command and ~/backups/cpuuse/cpu_usage.txt is the filepath
# In the above example, the `cpu_usage_tool` command will output CPU usage information into a `cpu_usage.txt` file.
# Do not forget to use the -h option for free memory, disk usage, and free disk space

free -h  >> ~/backups/freemem/free_mem.txt
du -h >> ~/backups/diskuse/disk_usage.txt
lsof >> ~/backups/openlist/open_list.txt
df -h >> ~/backups/freedisk/free_disk.txt
