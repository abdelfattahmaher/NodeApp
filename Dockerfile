# use a node base image
FROM node:7-onbuild

# set maintainer
LABEL maintainer "crudsinfotechng@gmail.com"

# install docker client
RUN curl -fsSL https://get.docker.com -o get-docker.sh \
    sudo sh get-docker.sh

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8000 || exit 1

# tell docker what port to expose
EXPOSE 8000
