#!/bin/bash

echo "All variables: $@"
echo "Number of variables passed: $#"
echo "Script name: $0"
echo "Current Working Directory: $PWD"
echo "Home Directory of Current User: $HOME"
echo "Which user is running this script: $USER"
echo "Hostname: $HOSTNAME"
echo "Process ID of current shell script: $$"
# sleep 60  # sleeps for 1 minute
sleep 60 &
echo "Process ID of last background command: $!"
