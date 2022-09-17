#!/bin/bash

FILE=/tmp/iso
if [ -d "$FILE" ]; then
    echo "$FILE is a directory."
else 
    echo "$FILE does not exist."
	mkdir /tmp/iso
fi

#old
#!/bin/bash
if [[ ! -e /tmp/iso ]]; then
            mkdir /tmp/iso
fi
