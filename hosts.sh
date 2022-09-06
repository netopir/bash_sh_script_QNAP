#!/bin/sh
if [ x"`/bin/cat /etc/hosts | /bin/grep announce.borg`" = x ]
	then
	cp /share/CACHEDEV1_DATA/Config/hosts /etc/
fi
