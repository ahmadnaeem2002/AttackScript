#!/bin/bash
## function to test ping host
function pingHost () {
	HOST=${1}
	ping -c 1 ${HOST} > /dev/null 2>&1
}

## function to collect pinged devices 

function pingSubnet () {
	IP=${1}
	OCT1=$(echo ${IP} | awk ' BEGIN { FS="." } { print $1  } ' )
	OCT2=$(echo ${IP} | awk ' BEGIN { FS="." } { print $2  } ' )
	OCT3=$(echo ${IP} | awk ' BEGIN { FS="." } { print $3  } ' )
	OCT4=$(echo ${IP} | awk ' BEGIN { FS="." } { print $4  } ' )
	for i in $(seq 1 254)
	do
		IP="${OCT1}.${OCT2}.${OCT3}.${i}"
		echo -n "Pinging host ${IP} .."
		pingHost ${IP}
		if [ ${?} -eq 0 ]
		then
			echo ${IP} >> livehost.txt
		fi
		echo ".. Done"
	done
	
}

