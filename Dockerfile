FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y apache2 git net-tools php7.2 libapache2-mod-php netcat-openbsd \
	php7.2-fpm \
	php7.2-common \
	php7.2-pdo \
	php7.2-mbstring \
	php7.2-gd

RUN a2enmod mpm_prefork && a2enmod php7.2

WORKDIR /var/www/html/
RUN rm -rfv index.html

RUN git clone https://github.com/Anon-Exploiter/webApplicationTakeover .
RUN chown www-data:www-data /var/www/html -R 
RUN chmod 755 /var/www/html

CMD ["bash", "-c", "/bin/bash run.sh"]
