# Start from an official nginx image
FROM nginx:alpine

# Delete the default nginx index page
RUN rm /usr/share/nginx/html/*

# Copy our static website to nginx container
COPY . /usr/share/nginx/html

# Expose port 80 for the web server
EXPOSE 80

# Start Nginx when the container has provisioned
CMD ["nginx", "-g", "daemon off;"]

