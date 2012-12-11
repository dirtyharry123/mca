#!/bin/bash

sudo ejsweb compile all
sudo cp -rf ./* /var/www/infocam
sudo appweb --config /etc/appweb/appweb.conf 
