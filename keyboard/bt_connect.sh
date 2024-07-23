#!/usr/bin/expect -f

set prompt "#"
set address [lindex $argv 0]
set pause 3

spawn bluetoothctl
expect -re $prompt
send "scan on\r"
send_user "\nSleeping\r"
sleep 10
send_user "\nDone sleeping\r"
send "trust $address\r"
sleep $pause
send "pair $address\r"
sleep $pause
send "connect $address\r"
sleep $pause
send_user "\nShould be paired now.\r"
send "quit\r"
expect eof
