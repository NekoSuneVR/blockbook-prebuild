# Dockerfile References: https://docs.docker.com/engine/reference/builder/
FROM ubuntu:20.04

# Add Maintainer Info
LABEL maintainer="NekoSuneVR <nekosunevr@gmail.com>"

# Set the Current Working Directory inside the container
WORKDIR /app

COPY . .

RUN apt-get update -y && apt-get install -y logrotate libsnappy1v5 libzmq5 psmisc

RUN dpkg -i backend-znz_2.1.0-satoshilabs-1_amd64.deb

RUN dpkg -i blockbook-znz_0.3.6_amd64.deb

RUN chmod 775 entrypoint.sh

EXPOSE 9013 9113
# Command to run the executable
CMD ["./entrypoint.sh"]
