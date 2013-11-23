#!/bin/sh

#cd /bin
#for i in $(busybox --list); do ln -s busybox $i ; done
##for i in dropbear dropbearkey dropbearconvert scp ssh dbclient ; do rm -f $i ; ln -s dropbearmulti $i ; done

hostname mca
ntpd -q -p 5.135.224.180

touch /var/log/syslog.txt
syslogd -O /log/syslog.txt  -L -l 8 
klogd  -c 8

/etc/init.d/wireless start

udhcpc -q -i ra0

if [ ! -f /etc/dropbear/dropbear_rsa_host_key ]
    then
       echo "Generating keys for the dropbear ssh server: "
       mkdir -p /etc/dropbear
       dropbearkey -t rsa -s 768 -f /etc/dropbear/dropbear_rsa_host_key
fi

/bin/telnetd -l /bin/login /usr/bin/help -p 23
dropbear

exit