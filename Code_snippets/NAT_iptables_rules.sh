iptables - -table nat - -append POSTROUTING 
	- -out-interface eth0 -j MASQUERADE

iptables - -append FORWARD - -in-interface eth1 -j ACCEPT
