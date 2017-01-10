#!/usr/bin/env bash
mkdir -p /root/Pictures
for i in {1..10}; do wget https://unsplash.it/500/500/?random -O "/root/Pictures/$i.jpg"; done