## Script scan all live hosts of the subnet and list the open ports 
###################################################################

source checker.sh 
source ping.sh 
source print1.sh


LIVEHOST=livehost.txt
SUBNET=${1}

checkIpv4 ${SUBNET}
[ ${?} -eq 0 ] && echo "Invalid IPv4 " && exit 1
pingSubnet ${SUBNET}
echo "Live Hosts"
while read h 
do
	echo "${h}"
		printOpnePort ${h}
done < ${LIVEHOST}
rm -rf ${LIVEHOST}
exit 0

