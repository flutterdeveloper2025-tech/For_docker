FROM nginx:alpine

# Copy website files
COPY websites/ /usr/share/nginx/html

# Fix permissions and ownership for nginx
RUN chmod -R 755 /usr/share/nginx/html \
    && chown -R nginx:nginx /usr/share/nginx/html

EXPOSE 80
