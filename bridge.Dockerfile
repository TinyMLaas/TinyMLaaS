FROM nestybox/alpine-docker

EXPOSE 8080

RUN apk update && apk add --no-cache docker git usbutils python3 py3-pip && \
    pip install --upgrade pip && \
    git clone https://github.com/TinyMLaas/TinyML-MCU.git

WORKDIR /TinyML-MCU
    
RUN pip install --upgrade --ignore-installed packaging -r requirements.txt

CMD dockerd > /var/log/dockerd.log 2>&1 & waitress-serve main:app