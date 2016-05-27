# Selenium server with firefox and VNC

Selenium port: 4444
VNC password: selenium
VNC port: 5901

Run:

```sh
# create container for the first time
docker create -p 4444:4444 -p 5901:5901 --name selenium martinsbalodis/docker-selenium

# start the container when you need it
docker start selenium
```

Build:

```sh
docker build --no-cache --tag=martinsbalodis/docker-selenium .
```