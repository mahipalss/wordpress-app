FROM centos:7
EXPOSE 80
WORKDIR /app
COPY . /app
VOLUME ["/var/www/html"]
RUN yum install httpd -y
CMD ["/usr/sbin/httpd","D","FORGROUND"]
