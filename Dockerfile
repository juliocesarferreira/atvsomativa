FROM ubuntu:latest
RUN mkdir /app
WORKDIR /app
RUN apt-get update
RUN apt-get install -y apache2
COPY somativa.html /var/www/html/index.html
CMD [ "sevice", "apache2", "start" ]
CMD [ "tail", "-f", "/dev/null" ]
CMD apachectl -D FOREGROUND
EXPOSE 7000