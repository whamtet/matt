#!/bin/ash

mac='D1:01:1A:9F:0E:B4'

while :
do
  if bluetoothctl devices Connected | grep $mac; then
    echo "matched"
  else 
    $(dirname "$0")/bt_connect.sh $mac
  fi

  sleep 10 
done
