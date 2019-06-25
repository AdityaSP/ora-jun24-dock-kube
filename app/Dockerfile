FROM alpine
LABEL description="http image with configurable port"
RUN apk update
RUN apk add apache2
COPY docker-entrypoint.sh /bin
RUN chmod +x /bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["httpd", "-D", "FOREGROUND"]
COPY mypage.html /var/www/localhost/htdocs
ENV APACHE_PORT 80
#docker-entrypoint.sh httpd -D FOREGROUND
