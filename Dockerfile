FROM alpine:latest
LABEL description="New Web Application"
LABEL maintainer="Yamini - helloyams@gmail.com"
RUN apk update && apk upgrade
RUN apk add --update lighttpd 
COPY /conf/lighttpd.conf /etc/lighttpd/
COPY /web/index.html /var/www/html/
EXPOSE 80
CMD ["lighttpd","-D","-f","/etc/lighttpd/lighttpd.conf"]