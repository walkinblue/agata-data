#!/bin/bash
cp /root/agatamind/agata-data/conf/nginx.conf /etc/nginx/nginx.conf
systemctl stop nginx
systemctl start nginx