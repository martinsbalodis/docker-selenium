#!/usr/bin/env bash

# @TODO configurable password with env
echo 'root:password' | chpasswd

/usr/sbin/sshd -D