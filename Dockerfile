FROM nginx:alpine

# Copy only website folder
COPY websites/ /usr/share/nginx/html

# Fix permissions
RUN chmod -R 644 /usr/share/nginx/html

EXPOSE 80
