#!/bin/bash
clear
ip=$(eval ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')
echo "http://$ip:8080 is listening..."
python3 ./SimpleHTTPServerWithUpload.py 8080
