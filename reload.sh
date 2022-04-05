#!/bin/bash
/usr/sbin/dnsmasq --keep-in-foreground --hostsdir=/hosts_dir --auth-zone=perf.redhat.com &
dns_pid=$!
while true; do
    sleep 600
    kill -1 $dns_pid
done
