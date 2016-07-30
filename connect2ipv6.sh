#! /bin/bash

if [ `ping -w 3 www.youtube.com | grep icmp | wc -l` -ge 1 ]
then
	connected=1
else
	connected=0
fi
echo $connected



while [ $connected -eq 0 ] && [ `ifconfig|grep tun | wc -l` -gt 1 ]
do 
	sudo pkill openvpn
	sleep 5
done

if [ $connected -eq 0 ] && [ `ifconfig|grep tun | wc -l` -eq 0 ]
then
	sudo openvpn --cd /etc/openvpn --config IPv6_US_fdu.ovpn --daemon openvpn --auth-user-pass /etc/openvpn/pass.txt
fi
