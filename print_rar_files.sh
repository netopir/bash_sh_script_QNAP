#!/bin/bash

# Set the filename
filename=/share/CACHEDEV6_DATA/rar_file.txt
# Check the file is exists or not
if [ -f $filename ]; then
   # Remove  the file with permission
   rm -i "$filename"
   # Check the file is removed or not
   if [ -f $filename ]; then
      echo "$filename is not removed"
   else
      echo "$filename is removed"
   fi
else
   echo "File does not exist"
fi

walk_dir () {    
    shopt -s nullglob dotglob

    for pathname in "$1"/*; do
        if [ -d "$pathname" ]; then
            walk_dir "$pathname"
        else
            case "$pathname" in
                *.rar|*.zip)
                    printf '%s\n' "$pathname"  >> /share/CACHEDEV6_DATA/rar_file.txt
            esac
        fi
    done
}

DIR=/share/CACHEDEV6_DATA

walk_dir "$DIR"
