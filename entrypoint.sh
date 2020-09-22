#!/bin/sh
( echo $ANYCONNECT_USER; echo $ANYCONNECT_PASSWORD; echo $ANYCONNECT_PASSWORD; echo yes; ) | /opt/cisco/anyconnect/bin/vpn -s connect $ANYCONNECT_SERVER &>/dev/null
