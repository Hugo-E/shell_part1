#!/usr/bin/env bash

echo -n $(whoami) ; echo -n "@" ; echo hostname
echo "----------"
echo -n "OS: " ; uname -a | cut -d " " -f 15
echo -n K ; hostnamectl | grep Kernel | cut -d "K" -f 2
echo -n "Uptime:" ; uptime
echo -n "Shell: " ; $SHELL --version | head -1
echo -n "CPU:";  cat /proc/cpuinfo | grep 'model name' | uniq | cut -d ":" -f2
echo -n "Memory: " ; echo -n $(free -m | head -2 | tail -1 | cut -d ":" -f 2 | cut -d " " -f 20);
echo -n "MiB / "
echo -n $(free -m | head -2 | tail -1 | cut -d ":" -f 2 | cut -d " " -f 12);
echo "MiB"
