#!/bin/bash

rm -f rancherd1.json
rm -f rancherd2.json
rm -f rancherd3.json

doctl compute droplet delete rancherd1 --force
doctl compute droplet delete rancherd2 --force
doctl compute droplet delete rancherd3 --force

doctl compute droplet create rancherd1 --ssh-keys 353780 --user-data-file ./files/rancherd.yaml --region nyc1 --size s-2vcpu-4gb --image ubuntu-20-04-x64 --tag-name rancherd -o json --wait >rancherd1.json
doctl compute droplet create rancherd2 --ssh-keys 353780 --user-data-file ./files/rancherd.yaml --region nyc1 --size s-2vcpu-4gb --image ubuntu-20-04-x64 --tag-name rancherd -o json --wait >rancherd2.json
doctl compute droplet create rancherd3 --ssh-keys 353780 --user-data-file ./files/rancherd.yaml --region nyc1 --size s-2vcpu-4gb --image ubuntu-20-04-x64 --tag-name rancherd -o json --wait >rancherd3.json