FROM ubuntu:24.10
RUN apt update 
RUN apt install -y apache2 
RUN apt install -y apache2-utils 
RUN apt clean 
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
COPY website/ /var/www/html

EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]