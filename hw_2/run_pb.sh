ansible-playbook -vv \
        -i inventories/production/production.ini \
        -k -K \
        prepare.yml