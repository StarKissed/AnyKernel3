#!/system/bin/sh

sleep 10;
#
## Applying StarKissed Settings
#
## Set TCP congestion algorithm
#	echo "bbr" > /proc/sys/net/ipv4/tcp_congestion_control
#
## Setup Raccoon City Governor
    echo "raccoon_city" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

    echo "raccoon_city" > /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor

    echo "raccoon_city" > /sys/devices/system/cpu/cpu7/cpufreq/scaling_governor
