# Dockerfile References: https://docs.docker.com/engine/reference/builder/
FROM ubuntu:22.04

# Add Maintainer Info
LABEL maintainer="NekoSuneVR <nekosunevr@gmail.com>"

# Set the Current Working Directory inside the container
WORKDIR /app

COPY . .

RUN apt-get update -y && apt-get install -y logrotate libsnappy1v5 libzmq5 psmisc

RUN dpkg -i backend-pivx_5.6.1-satoshilabs-1_amd64.deb

RUN dpkg -i blockbook-pivx_0.3.6_amd64.deb

RUN chmod 775 entrypoint.sh

EXPOSE 9049 9149
# Command to run the executable
CMD ["./entrypoint.sh"]
