ansible-playbook \
    -i inventory/hosts.ini roles/aos-"$1"-pb.yml \
    --extra-var inventory/group_vars/"$1"/credential.yml \
    --vault-password-file ~/.ansible_pass.txt \
    -v \
    # -t update