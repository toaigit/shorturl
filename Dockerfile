FROM httpd:2.4.43

COPY files/index.html /usr/local/apache2/htdocs
COPY files/links.txt /data/links.txt
COPY files/httpd-vhosts.conf /usr/local/apache2/conf/extra/httpd-vhosts.conf
COPY files/httpd.conf /usr/local/apache2/conf/httpd.conf

COPY ./certs  /usr/local/apache2/conf
COPY files/httpd-ssl.conf /usr/local/apache2/conf/extra/httpd-ssl.conf

WORKDIR /usr/local/apache2
CMD ["apachectl", "-D", "FOREGROUND"]
EXPOSE 80
EXPOSE 443
