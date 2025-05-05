FROM debian

RUN apt-get update && apt-get install -y apache2 && apt-get clean

COPY site/ /var/www/html/

EXPOSE 80

CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
