FROM centos:latest
MAINTAINER Orizon-Devops-Eric Gonçalves
RUN yum -y install httpd
COPY ./front/html /var/www/html/
ENTRYPOINT [ "/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
