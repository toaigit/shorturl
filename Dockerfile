FROM httpd:2.4.43

COPY files/index.html /var/www/html/
COPY files/httpd-vhosts.conf /usr/local/apache2/conf/extra/httpd-vhosts.conf
COPY files/httpd.conf /usr/local/apache2/conf/httpd.conf
WORKDIR /var/www/html
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80
