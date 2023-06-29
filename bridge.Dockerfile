FROM nestybox/alpine-docker

EXPOSE 8080

RUN apk update && apk add --no-cache docker git usbutils python3 py3-pip && \
    pip install --upgrade pip && \
    git clone https://github.com/TinyMLaas/TinyML-MCU.git

WORKDIR /TinyML-MCU
    
RUN pip install --upgrade --ignore-installed packaging -r requirements.txt && \
    echo "dockerd > /var/log/dockerd.log 2>&1 &" > start_docker_daemon.sh && \
    chmod u+x start_docker_daemon.sh

CMD ./start_docker_daemon.sh ; waitress-serve main:app
