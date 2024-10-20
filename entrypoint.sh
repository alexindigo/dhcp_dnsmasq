#!/bin/sh

# start dnsmasq (as daemon)
dnsmasq

# start web-ui (as foreground)
python /app/index.py 80
