#!/bin/bash
# This script contain funcutions to check
## for all functions --> return 1 if valid && return 0 if not
### check if integers
function checkInt () {
	NUM=${1}
	RES=$(echo ${NUM} | grep -c "^[0-9]*$")
	if [ ${RES} -eq 1 ]
	then
		return 1
	else
		return 0
	fi
}
###############################################
# check octtet
function checkOct () {
	OCT=${1}
	checkInt ${OCT}
	[ ${?} -eq 0 ] && return 0
	[ -z ${OCT} ] && return 0
	if [ ${OCT} -ge 0 ] && [ ${OCT} -le 254 ]
	then
		return 1
	else
		return 0
	fi
}
###############################################
# check ipv4
function checkIpv4 () {
	IP=${1}
	OC1=$(echo ${IP} | awk ' BEGIN { FS="." } { print $1 } ' )
	OC2=$(echo ${IP} | awk ' BEGIN { FS="." } { print $2 } ' )
	OC3=$(echo ${IP} | awk ' BEGIN { FS="." } { print $3 } ' )
	OC4=$(echo ${IP} | awk ' BEGIN { FS="." } { print $4 } ' )
	checkOct ${OC1} && return 0
	checkOct ${OC2} && return 0
	checkOct ${OC3} && return 0
	checkOct ${OC4} && return 0
	return 1
}

