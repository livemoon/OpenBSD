#!/bin/sh
# Configure wireless interface

NIC_W=bwi0
NIC_E=gem0

case $1 in
shome)
    ifconfig ${NIC_E} delete
    route flush
    ifconfig ${NIC_W} nwid "livemoon's wifi" chan 11 -nwkey
    ifconfig ${NIC_W} inet 192.168.1.17 255.255.255.0
    route add default 192.168.1.1
    echo ${NIC_W}
    ;;
doffice)
    ifconfig ${NIC_W} nwid "TP-LINK" chan 1 wpakey "123456"
    dhclient ${NIC_W}
    echo ${NIC_W}
    ;;
stop)
    ifconfig ${NIC_W} remove
    echo " ${NIC_W} removed"
    sh /etc/netstart
    echo " start ${NIC_E}"
    ;;
*)
    echo " usage mywifi.sh [shome|doffice]"
    ;;
esac

