FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get install -y php
WORKDIR /var/www/html
COPY php/ /var/www/html/
USER 1001
CMD ["nginx", "-g", "daemon off;"]
