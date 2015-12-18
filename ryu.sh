#!/bin/bash
sudo pip install ryu
sudo pip install six --upgrade
cd /usr/local/lib/python2.7/dist-packages/ryu/tests/switch/
ryu-manager --test-switch-dir of13 tester.py

