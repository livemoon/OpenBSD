#!/bin/sh

gw=`netstat -rn -f inet | grep ^default | awk '{print $2};'`
/sbin/route add -host 1.2.3.4 ${gw}
/sbin/route delete default
