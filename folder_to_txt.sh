#!/bin/bash
for d in ./*;do [[ -d "$d" ]] && echo "${d##./}" >> dir.txt; done
