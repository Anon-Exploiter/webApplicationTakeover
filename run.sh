#!/bin/bash

service apache2 start > /dev/null 2>&1 && \
	echo "[#] Challenge can be accessed at: http://$(hostname -I)" && \
	tail -f /dev/null
