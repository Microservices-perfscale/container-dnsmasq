# container-dnsmasq

podman build -t dnsmasqperf .

podman run -it -p 5353:53 -v /tiny-ddns-manager/hosts_dir/:/hosts_dir/:Z --name dnsserver dnsmasqperf
