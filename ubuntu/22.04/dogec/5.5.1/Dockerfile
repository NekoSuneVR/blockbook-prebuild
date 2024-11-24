# Dockerfile References: https://docs.docker.com/engine/reference/builder/
FROM ubuntu:20.04

# Add Maintainer Info
LABEL maintainer="NekoSuneVR <nekosunevr@gmail.com>"

# Set the Current Working Directory inside the container
WORKDIR /app

COPY . .

RUN apt-get update -y && apt-get install -y logrotate libsnappy1v5 libzmq5 psmisc

RUN dpkg -i backend-dogec_5.5.1-satoshilabs-1_amd64.deb

RUN dpkg -i blockbook-dogec_0.3.6_amd64.deb

RUN chmod 775 entrypoint.sh

EXPOSE 9025 9125
# Command to run the executable
CMD ["./entrypoint.sh"]
