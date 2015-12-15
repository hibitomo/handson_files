#!/bin/bash

sudo ip link add veth0 type veth peer name veth1
sudo ip link add veth2 type veth peer name veth3
sudo ip link add veth4 type veth peer name veth5

sudo ip link set veth0 up
sudo ip link set veth1 up
sudo ip link set veth2 up
sudo ip link set veth3 up
sudo ip link set veth4 up
sudo ip link set veth5 up

ip link | grep veth