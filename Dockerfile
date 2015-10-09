# arillo:nginx-ssl-proxy
#
# VERSION   0.0.1

FROM nginx

MAINTAINER Arillo GmbH <we@arillo.net>

RUN rm /etc/nginx/conf.d/*.conf

WORKDIR /usr/src

ADD entrypoint.sh /usr/src/
ADD nginx/nginx.conf /etc/nginx/
ADD nginx/proxy_ssl.conf /usr/src/

ENTRYPOINT ./entrypoint.sh
