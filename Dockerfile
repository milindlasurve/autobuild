FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y php
WORKDIR /var/www/html
COPY php/ /var/www/html/
RUN chmod 777 -R /var/lib/nginx
RUN chmod 777 -R /var/log/nginx
RUN chmod 777 -R /etc/nginx
CMD ["nginx", "-g", "daemon off;"]
