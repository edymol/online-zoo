# Start from a base image with Node.js (for frontend) or Nginx (for serving the site)
FROM nginx:alpine

# Copy the app files into the Nginx container
COPY ./pages /usr/share/nginx/html
COPY ./assets /usr/share/nginx/html/assets
COPY ./js /usr/share/nginx/html/js
COPY ./styles /usr/share/nginx/html/styles
COPY ./icons /usr/share/nginx/html/icons

# Expose port 80
EXPOSE 80
