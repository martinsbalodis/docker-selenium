#!/usr/bin/env bash
mkdir -p /root/Pictures
for i in {1..10}; do wget https://unsplash.it/800/600/?random -O "/root/Pictures/$i.jpg"; done