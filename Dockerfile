# use any image as a base image
FROM nginx
# copy any custom config or files into the container
COPY nginx.conf /etc/nginx/nginx.conf
# create directory where the volume should be mounted
RUN mkdir -p /var/opt/nginx
# set port ,nginx default port is 80
EXPOSE 80
# start nginx
CMD ["nginx", "-g", "daemon off;"]
