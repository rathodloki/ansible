#!/bin/bash

cd /prod/
ansible-playbook -i prod-inventory.ini prod_ui_deploy-play.yaml -e "hosts=$1" -K
