#! /usr/bin/env bash
# thanks to kolypto @ serverfault for this script.
# since vncserver is running as a daemon, we're creating a foreground process uppon vncserver for supervisord.

set -eu

USER=root
export USER

# Setting pidfile + command to execute
pidfile="/root/.vnc/*:1.pid"
command="/usr/bin/vncserver :1 -geometry 1280x800 -depth 24"

# Proxy signals
function kill_app(){
    kill $(cat $pidfile)
    exit 0 # exit okay
}
trap "kill_app" SIGINT SIGTERM

# remove a lock file that might block startup of the vnc server
rm -rf /tmp/.X1-lock
rm -rf /tmp/.X11-unix

# Launch daemon
$command
sleep 2

# TODO should loop and wait for pidfile
# Loop while the pidfile and the process exist
#while [ -f $pidfile ] && kill -0 $(cat $pidfile) ; do
#    sleep 0.5
#done

# print log
tail -F /root/.vnc/*.log
