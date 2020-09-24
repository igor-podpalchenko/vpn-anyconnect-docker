#!/bin/sh
#while true; do sleep 30; done;
( echo $ANYCONNECT_PASSWORD; echo $ANYCONNECT_PASSWORD; ) | openconnect $ANYCONNECT_SERVER --user=$ANYCONNECT_USER --passwd-on-stdin --timestamp
