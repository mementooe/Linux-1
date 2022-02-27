#!/bin/bash
# description: simple SSHD init script 

start() {
    # TODO: code to start app comes here 
    echo "starting SSH server"
    /usr/sbin/sshd 
}

stop() {
    # TODO: code to stop app comes here 
    echo "stopping SSH server"
    kill `cat /var/run/sshd.pid`
}

#Checking if sshd binary is present else exit.
test –f /usr/bin/sshd || exit 0 

case "$1" in 
    start)
       start
       ;;
    stop)
       stop
       ;;
    restart)
       stop
       start
       ;;
    status)
       # TODO: code to check status of app comes here 
       ;;
    *)
       echo "Usage: $0 {start|stop|restart|status}"
esac

exit 0
