FROM nginx:1.21.3-alpine

ENV BASE_DIR /usr/share/nginx/html

RUN apk update && apk add bash
ADD src/ /usr/share/nginx/html
ADD nginx_start /usr/local/bin/

CMD 'nginx_start'
