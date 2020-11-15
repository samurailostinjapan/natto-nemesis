#! /bin/bash

    disk_used=$(df -h | grep "/dev/sda2" | awk '{print $3}');
    disk_tot=$(df -h | grep "/dev/sda2" | awk '{print $2}')
    disk_per=$(df -h | grep "/dev/sda2" | awk '{print $5}')
    echo "$disk_used/$disk_tot/$disk_per"   
 