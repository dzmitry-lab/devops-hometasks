# dockerfile
FROM debian:latest

RUN apt-get -y update && apt-get install -y systemd apache2 php libapache2-mod-php nano curl && apt-get -y clean
ADD https://raw.githubusercontent.com/L-Eugene/itacademy-devops-files/master/01-demosite-php/index.php /var/www/html
RUN rm -f /var/www/html/index.html && chmod +r /var/www/html/* && echo "service apache2 start" >> /etc/bash.bashrc
