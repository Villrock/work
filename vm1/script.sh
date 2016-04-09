#!/bin/bash
sudo apt-get update
   sudo apt-get install nginx -y
   sudo chown -R www-data:www-data /usr/share/nginx/html
   cd /etc/nginx/sites-enabled/
   sudo perl -i -pe 'print "proxy_pass http://192.168.10.2:9090;" if $. == 34' default
   sudo service nginx stop
   sudo service nginx start
