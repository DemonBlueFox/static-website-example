FROM nginx
COPY static-website-example . /usr/share/nginx/html
EXPOSE 80