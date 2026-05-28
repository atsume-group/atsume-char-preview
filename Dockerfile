FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY images/ /usr/share/nginx/html/images/
COPY avatars/ /usr/share/nginx/html/avatars/
COPY wave2/ /usr/share/nginx/html/wave2/
COPY wave3/ /usr/share/nginx/html/wave3/
EXPOSE 8080
