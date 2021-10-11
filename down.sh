#!/bin/bash

rm -f rancherd1.json
rm -f rancherd2.json
rm -f rancherd3.json

doctl compute droplet delete rancherd1 --force
doctl compute droplet delete rancherd2 --force
doctl compute droplet delete rancherd3 --force