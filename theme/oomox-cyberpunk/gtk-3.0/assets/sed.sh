#!/bin/sh
sed -i \
         -e 's/#1e1e1e/rgb(0%,0%,0%)/g' \
         -e 's/#ffffff/rgb(100%,100%,100%)/g' \
    -e 's/#1e1e1e/rgb(50%,0%,0%)/g' \
     -e 's/#a3e4d9/rgb(0%,50%,0%)/g' \
     -e 's/#222222/rgb(50%,0%,50%)/g' \
     -e 's/#dfdfdf/rgb(0%,0%,50%)/g' \
	"$@"
