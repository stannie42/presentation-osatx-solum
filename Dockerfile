FROM paulczar/apache-demo

ADD . /var/www

EXPOSE 5000

RUN sed -i 's/80/5000/' /etc/apache2/ports.conf
RUN sed -i 's/80/5000/' /etc/apache2/sites-enabled/000-default

CMD apache2 -D FOREGROUND
