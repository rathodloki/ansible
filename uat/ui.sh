#!/bin/bash
date
if [ -z $1 ]
then
echo "*WARNING*: ui_port is not specified!"
echo "80 or 8080 or both"
fi
if [ -z $2 ]
then
echo "please provide branch_tag"
echo "branch or tag"
echo "format should be "
echo "----------eg:- ./ui 'ui_port' 'branch_tag' "
exit
fi
cd /home/ansible/ansible-tata-li-ui/uat/
ansible-playbook -i tata-li-inventory.ini uat_ui_deploy-play.yaml --extra-vars "uat_port=$1 branch_tag=$2"
date
