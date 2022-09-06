#!/bin/bash

if [ ! -a /bin/rar ];
then
	echo "rar - File exists."
else
	cp -rp /share/CACHEDEV1_DATA/Config/rar /bin/
fi

if [ ! -a /bin/zip ];
then
	echo "zip - File exists."
else
	cp -rp /share/CACHEDEV1_DATA/Config/zip /bin/
fi

if [ ! -a /bin/unrar ];
then
	echo "unrar - File exists."
else
	cp -rp /share/CACHEDEV1_DATA/Config/unrar /bin/
fi

if [ ! -a /bin/unzip ];
then
	echo "unzip - File exists."
else
	cp -rp /share/CACHEDEV1_DATA/Config/unzip /bin/
fi
