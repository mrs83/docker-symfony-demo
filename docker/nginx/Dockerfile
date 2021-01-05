FROM nginx:alpine

COPY app /var/www
COPY ./docker/nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./docker/nginx/sites/default.conf /etc/nginx/sites-available/default.conf
COPY ./docker/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf

WORKDIR /var/www

CMD ["nginx"]

EXPOSE 80
