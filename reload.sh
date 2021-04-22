#!/bin/bash
/usr/sbin/dnsmasq -d --hostsdir=/hosts_dir 1>&- 2>&-  &
dns_pid=$!
while true
do
sleep 600
kill -1 $dns_pid
done
