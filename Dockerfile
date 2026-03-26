FROM nginx:alpine AS production
COPY index.html /usr/share/nginx/html/
COPY privacy.html /usr/share/nginx/html/
COPY terms.html /usr/share/nginx/html/
COPY templates/ /usr/share/nginx/html/templates/
COPY sitemap.xml /usr/share/nginx/html/
COPY robots.txt /usr/share/nginx/html/
COPY ads.txt /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
