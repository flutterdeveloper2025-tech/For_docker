FROM nginx:alpine

# Copy all files from 'websites' folder to nginx html folder
COPY websites/ /usr/share/nginx/html

# Fix permissions
RUN chmod -R 644 /usr/share/nginx/html

EXPOSE 80
