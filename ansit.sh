#
set -ex

host=${1:-pi3}

ansible-playbook \
    ansible/site.yml --inventory-file inventory/hosts \
    --user root --limit ${host} -vvv \

