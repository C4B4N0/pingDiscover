#!/bin/bash
if [ "$1" == "" ]; #verifica se falta passar o ip
then 
	echo "PING SWEEP - PORTSCAN"
	echo "Como usar este script: $0 REDE"
	echo "Exemplo: $0 192.168.1"
else

for ip in {1..254};
do
ping -c 1 $1.$ip | grep  "ttl" | cut -d ":" -f 1 | cut -d " " -f 4;
done
fi
