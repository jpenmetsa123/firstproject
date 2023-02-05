FROM ubuntu:latest
RUN apt update && \
    apt -y install \
    apache2
ADD . /var/www/html
ENTRYPOINT ["apache2ctl", "-D", "FOREGROUND"]
