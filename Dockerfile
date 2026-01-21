FROM nginx:alpine
COPY website/ /usr/share/nginx/html
RUN chmod -R 644 /usr/share/nginx/html
EXPOSE 80
