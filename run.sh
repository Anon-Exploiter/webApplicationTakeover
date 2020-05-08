#!/bin/bash

service apache2 start > /dev/null 2>&1 && \
	mv .git oldSourceCode
	echo "[#] Challenge can be accessed at: http://$(hostname -I)" && \
	tail -f /dev/null
