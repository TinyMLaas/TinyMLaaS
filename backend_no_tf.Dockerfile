FROM alpine:3.18

EXPOSE 8000

COPY start_docker_daemon.sh .
RUN chmod u+x start_docker_daemon.sh

RUN apk update && apk upgrade && apk add docker py3-pip sqlite py3-opencv git

COPY /TinyML-backend /TinyML-backend

WORKDIR /TinyML-backend

RUN   touch tiny_mlaas.db && sqlite3 tiny_mlaas.db '.read schema.sql' '.read populate.sql'

# RUN   git remote add main https://github.com/TinyMLaas/TinyMLaaS.git
# RUN   git fetch main
# RUN   git checkout main/main -- TinyMLaaS_main

RUN   pip install --default-timeout=1000 --upgrade --ignore-installed packaging -r requirements.txt

CMD ../start_docker_daemon.sh ; uvicorn main:app --host 0.0.0.0
