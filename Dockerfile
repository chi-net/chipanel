FROM debian:latest
# install docker
RUN apt-get update -y && apt-get install ca-certificates curl gnupg wget lsb-release -y \
    && mkdir -p /etc/apt/keyrings && (curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg) \
    && (echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
       $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null) \
    && apt-get update -y && apt-get install docker-ce-cli docker-compose-plugin -y \
    && echo "deb http://nginx.org/packages/debian/ buster nginx" >> /etc/apt/sources.list \
    && echo "deb-src http://nginx.org/packages/debian/ buster nginx"  >> /etc/apt/sources.list \
    && wget http://nginx.org/keys/nginx_signing.key && apt-key add nginx_signing.key \
    && apt-get update -y && apt-get install nginx -y && service nginx start

EXPOSE 80 443 8080
ENTRYPOINT bash