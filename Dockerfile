FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install nginx -y
COPY . /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 8080:8080
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]


