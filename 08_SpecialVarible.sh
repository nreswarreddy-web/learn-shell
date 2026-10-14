#!/bin/bash

echo " all arugemnts passed to the script:$@"
echo "number of arugments passed to the script:$#"
echo "first variable passed:$1"
echo "who is running current script:$USER"
echo "current dictory:$PWD"
eco "home directory of current user:$HOME"
echo "pid of current script:$$"
sleep 10 &
echo "pid of the command running background :$!"
wait $! # script waits until $! command complete
echo "line number :$LINENO"
echo "previous command running staus :$?"
echo "toal time execured for this script:$SECONDS"