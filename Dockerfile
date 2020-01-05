# Filename: Dockerfile
FROM ubuntu:latest
LABEL maintainer="Docker student Paavo Muranen <paavo@muranen.fi>"
WORKDIR /mydir 
# Install necessary dependencies
RUN apt-get update && apt-get install -y ping wget 
RUN apt-get install -y curl python 
# Using Ubuntu curl the application

# Install app dependencies

# Building application
ENV LC_ALL=C.UTF-8 

# for docker run
## CMD wont work but ENTRYPOINT defines main executable and joins parms with it
ENTRYPOINT [“/bin/ping”,”-c”,”3”]
CMD [“localhost”]
