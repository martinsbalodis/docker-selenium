# Selenium server with firefox and VNC

Selenium port: 4444
VNC password: selenium
VNC port: 5901
SSH port: 2222

SSH is for port forwarding. If your web server is unreachable from the 
selenium server then you can do a port forward via ssh to make it 
accessible.

## Features

`/root/Pictures` contains 10 images from `/root/Pictures/1.jpg` to `/root/Pictures/10.jpg`.
Use these images when testing uploads.

## Run

```sh
# create container for the first time
docker create -p 4444:4444 -p 5901:5901 -p 2222:22 --name selenium martinsbalodis/docker-selenium

# start the container when you need it
docker start selenium
```

## Build

```sh
docker build --no-cache --tag=martinsbalodis/docker-selenium .
```