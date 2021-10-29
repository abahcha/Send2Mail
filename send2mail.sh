#!/usr/bin/bash

a=$(echo $1 |sed -e "s# ['/]#,'#g; s/'//g")

exec /usr/bin/thunderbird -compose attachment="'$a'"

exit 0