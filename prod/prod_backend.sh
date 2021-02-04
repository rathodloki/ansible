#!/bin/bash
date
if [ -z $1 ]
then
echo "please provide prod-backend server 180 or 181"
echo "format should be "
echo "----------eg:- ./backend 'backend_server' 'branch_tag' "
exit
fi
if [ -z $2 ]
then
echo "please provide branch_tag"
echo "branch or tag"
echo "format should be "
echo "----------eg:- ./backend 'backend_server' 'branch_tag' "
exit
fi
cd /prod/
ansible-playbook -i prod-inventory.ini prod_backend_deploy-play.yaml --extra-vars "shaft_port=$1 branch_tag=$2"
date
