FROM nginx:alpine

# Copy only website files
COPY website/ /usr/share/nginx/html

# Fix permissions
RUN chmod -R 644 /usr/share/nginx/html

EXPOSE 80
