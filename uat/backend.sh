#!/bin/bash
date
if [ -z $1 ]
then
echo "please provide shaft_port"
echo "7505 or 7501 or both"
echo "format should be "
echo "----------eg:- ./backend 'shaft_port' 'branch_tag' "
exit
fi
if [ -z $2 ]
then
echo "please provide branch_tag"
echo "branch or tag"
echo "format should be "
echo "----------eg:- ./backend 'shaft_port' 'branch_tag' "
exit
fi
cd /home/ansible/ansible-tata-li-ui/uat
ansible-playbook -i tata-li-inventory.ini uat_backend_deploy-play.yaml --extra-vars "shaft_port=$1 branch_tag=$2"
date
