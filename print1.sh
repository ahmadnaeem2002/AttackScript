#!/bin/bash
### function to print open ports
function printOpnePort () {
	HOST=${1}
	RES=$(nmap ${HOST} | grep open)
	echo "Open Ports for ${HOST}"
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	echo "${RES}" | awk ' { print $3 "\t" $1 } END { print "There are " NR " open ports " } '


echo "======================"
}
