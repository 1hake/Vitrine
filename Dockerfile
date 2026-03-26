FROM nginx:alpine AS production
COPY index.html /usr/share/nginx/html/
COPY templates/ /usr/share/nginx/html/templates/
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
