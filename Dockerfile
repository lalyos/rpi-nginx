FROM resin/rpi-raspbian

RUN apt-get update && apt-get install -y nginx
RUN sed -i "/ipv6only/ s/^/#/" /etc/nginx/sites-available/default
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

ADD start.sh /start.sh

EXPOSE 80 443
CMD /start.sh
