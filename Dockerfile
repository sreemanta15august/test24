FROM quay.io/gauravkumar9130/ubuntu-git
RUN apt-get update -y
RUN apt-get install apache2 -y
COPY index.html /var/www/html/
ENTRYPOINT service apache2 start && /bin/bash
