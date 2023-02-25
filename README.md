# wordpress-app
Take 3servers 1controller, 1app-server, 1db-server
# install ansible in controller
$ sudo yum update -y
$ sudo amazon-linux-extras install ansible2 -y
$ ansible --version

add ansiblehosts
add pemkey
add ansible.cfg
# add roles,apache,mariadb,wordpress
#write playbooks on apache,mariadb,wordpress
add main.yaml

add vars (define secret variables in vars)
##ansible-vault create secrets.yaml
 -ansible-vault edit secrets.yaml
 -ansible-vault view secrets.yaml
 -ansible-playbook main.yaml --ask-vault-pass

Add a Dockerfile in the controller-server
#build image and build container
# docker build -t "image" .
# docker run -itd --name container1 -p 8081:80 -v /app:/var/www/html image
# docker run -itd --name container2 -p 8082:80 -v /app:/var/www/html image

yum install nginx -y
vim /etc/nginx/conf.d/default.conf  ---configurationfile-add 2 container ports to hit 80
systemctl enable nginx
systemctl restart nginx
