channel channel01 create -dst-addr 127.0.0.1 -protocol tcp
channel channel02 create -dst-addr 127.0.0.1 -protocol tcp

controller controller01 create -channel channel01 -role equal -connection-type main
controller controller02 create -channel channel02 -role equal -connection-type main

interface interface01 create -type ethernet-rawsock -device veth0
interface interface02 create -type ethernet-rawsock -device veth1
interface interface03 create -type ethernet-rawsock -device veth2
interface interface04 create -type ethernet-rawsock -device veth3
interface interface05 create -type ethernet-rawsock -device veth4
interface interface06 create -type ethernet-rawsock -device veth5

port port01 create -interface interface01
port port02 create -interface interface02
port port03 create -interface interface03
port port04 create -interface interface04
port port05 create -interface interface05
port port06 create -interface interface06

bridge bridge01 create -controller controller01 -port port01 1 -port port03 2 -port port05 3 -dpid 0x1
bridge bridge01 enable
bridge bridge02 create -controller controller02 -port port02 1 -port port04 2 -port port06 3 -dpid 0x2
bridge bridge02 enable
