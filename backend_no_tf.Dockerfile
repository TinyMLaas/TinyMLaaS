FROM nestybox/ubuntu-jammy-docker
EXPOSE 8000

ENV TZ=Europe/Helsinki
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone &&\
    apt-get update && apt-get install -y git sqlite3 pip python3-opencv &&\
    git clone -b dockerize_tensorflow https://github.com/TinyMLaas/TinyML-backend

WORKDIR /TinyML-backend

RUN git remote add main https://github.com/TinyMLaas/TinyMLaaS.git && \
    git fetch main && \
    git checkout main/dockerize_tensorflow -- TinyMLaaS_main && \

RUN touch tiny_mlaas.db && sqlite3 tiny_mlaas.db '.read schema.sql' '.read populate.sql' && \
    pip install --default-timeout=1000 --upgrade --ignore-installed packaging -r requirements.txt && \
    chmod u+x start_docker_daemon.sh

CMD ./start_docker_daemon.sh ; uvicorn main:app --host 0.0.0.0

