FROM centos:7
EXPOSE 80
VOLUME ["/var/www/html"]
RUN yum install httpd -y
CMD ["/usr/sbin/httpd","D","FORGROUND"]
