#!/bin/bash

FILE1=/bin/rar
if [ -f "$FILE1" ]; then
    echo "$FILE1 exists."
else 
    echo "$FILE1 does not exist."
	cp -rp /share/CACHEDEV1_DATA/Config/rar /bin/
fi

FILE2=/bin/unrar
if [ -f "$FILE2" ]; then
    echo "$FILE2 exists."
else 
    echo "$FILE2 does not exist."
	cp -rp /share/CACHEDEV1_DATA/Config/unrar /bin/
fi

FILE3=/bin/zip
if [ -f "$FILE3" ]; then
    echo "$FILE3 exists."
else 
    echo "$FILE3 does not exist."
	cp -rp /share/CACHEDEV1_DATA/Config/zip /bin/
fi

FILE4=/bin/unzip
if [ -f "$FILE4" ]; then
    echo "$FILE4 exists."
else 
    echo "$FILE4 does not exist."
	cp -rp /share/CACHEDEV1_DATA/Config/unzip /bin/
fi


#OLD
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
