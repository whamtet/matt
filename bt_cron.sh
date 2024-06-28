if bluetoothctl devices | grep $1; then
  echo "matched"
else
  $(dirname "$0")/bt_connect.sh $1
fi
