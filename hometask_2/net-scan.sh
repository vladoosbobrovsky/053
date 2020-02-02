echo 'Input network (192.168.0)'
read ipaddress
for ip in {1..255}
do
	nc -vnz -w 1 $ipaddress.$ip 80 2>&1 | grep succeeded
	nc -vnz -w 1 $ipaddress.$ip 443 2>&1 | grep succeeded

done


