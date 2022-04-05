#!/bin/bash
/usr/sbin/dnsmasq --keep-in-foreground --hostsdir=/hosts_dir &
dns_pid=$!
while true; do
    sleep 600
    kill -1 $dns_pid
done
