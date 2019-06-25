#!/bin/sh
sed -i "s/Listen 80/Listen 9090/g" /etc/apache2/httpd.conf
exec "$@"
