#!/bin/bash

sudo cp -rf crm.conf /etc/nginx/sites-available/crm
chmod 710 /var/lib/jenkins/workspace/Django-CICD

sudo ln -s /etc/nginx/sites-available/crm /etc/nginx/sites-enabled
sudo nginx -t

sudo systemctl start nginx
sudo systemctl enable nginx

echo "Nginx has been started"

sudo systemctl status nginx