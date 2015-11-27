#!/bin/bash
sudo service <%= appName %> stop
sudo chown -R <%= appUser %> <%= appRemoteTargetPath %>
su <%= appUser %>
cd <%= appRemoteTargetPath %>

# unpack bundle / overwrite previous
tar -zxvf <%= appName %>.tar.gz
rm -rf <%= appName %>.tar.gz

# install npm dependencies
cd bundle/programs/server/
npm install
exit

# restart daemon
sudo chkconfig –-add <%= appName %> 
sudo chkconfig --level 3 <%= appName %> on
sudo service <%= appName %> start