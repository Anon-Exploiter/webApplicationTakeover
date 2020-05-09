#!/bin/bash

mv .git oldSourceCode
sed -i 's/None/All/g' /etc/apache2/apache2.conf
service apache2 start > /dev/null 2>&1 && \
        echo "[#] Challenge can be accessed at: http://$(hostname -I)" && \
        tail -f /dev/null
