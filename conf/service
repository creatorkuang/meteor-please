#!/bin/bash
#chkconfig:345 99 01
#description:<%= appName %>
NODE_ENTRY='/opt/<%= appName %>/bundle/main.js'
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
NODE_PATH='/usr/local/lib/node_modules'
NODE=/usr/local/bin/node

test -x $NODE || exit 0
function start_app {
	ROOT_URL=<%= appRootUrl %> PORT=<%= appPort %> NODE_ENV=production METEOR_SETTINGS=<%- appEnv %> pm2 start --name <%= appName %> $NODE_ENTRY
}
function stop_app {
	pm2 kill <%= appName %>
}
case $1 in
start)
start_app ;;
stop)
stop_app ;;
restart)
stop_app
start_app
;;
*)
echo "usage: clearstonecc {start|stop}" ;;
esac
exit 0