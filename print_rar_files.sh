#!/bin/bash

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

DOWNLOADING_DIR=/share/CACHEDEV6_DATA

walk_dir "$DOWNLOADING_DIR"
