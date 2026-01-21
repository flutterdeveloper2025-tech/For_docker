FROM nginx:alpine

# Copy only website folder into nginx html folder
COPY website/ /usr/share/nginx/html

# Fix permissions so nginx can read everything
RUN chmod -R 644 /usr/share/nginx/html

EXPOSE 80
