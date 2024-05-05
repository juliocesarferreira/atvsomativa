FROM ubuntu:latest
RUN mkdir /app
WORKDIR /app
RUN apt-get update && apt-get install -y apache2
COPY somativa.html /var/www/html/index.html
EXPOSE 80
CMD apachectl -D FOREGROUND
