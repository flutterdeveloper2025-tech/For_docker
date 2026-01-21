FROM nginx:alpine

# Copy all files from repo root to nginx html folder
COPY website/ /usr/share/nginx/html

# Fix permissions
RUN chmod -R 644 /usr/share/nginx/html

EXPOSE 80
