# docker/Dockerfile
FROM nginx:alpine
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to allow external access
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
