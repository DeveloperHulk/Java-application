FROM centos:latest
MAINTAINER rahulchoudhary87096@gmail.com
RUN yum install -y httpd\
 unzip\
 zip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page294/digian.zip
WORKDIR /var/www/html
RUN unzip digian.zip
RUN cp -rvf digian-html/* .
RUN rm -rf digian-html digian.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
