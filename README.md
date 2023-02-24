# wordpress-app
add ansiblehosts
add pemkey
add ansible.cfg
add roles,apache,mariadb,wordpress
add main.yaml



##ansible-vault create secrets.yaml
 -ansible-vault edit secrets.yaml
 -ansible-vault view secrets.yaml
 -ansible-playbook main.yaml --ask-vault-pass
