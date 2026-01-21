FROM nginx:alpine

COPY . /usr/share/nginx/html
RUN chmod -R 644 /usr/share/nginx/html   # ✅ permissions fix
EXPOSE 80
