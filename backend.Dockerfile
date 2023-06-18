FROM python:3.10

EXPOSE 8000

RUN apt-get update && apt-get install -y python3-opencv sqlite3 &&  \

    git clone https://github.com/TinyMLaas/TinyML-backend.git

WORKDIR /TinyML-backend

RUN touch tiny_mlaas.db && sqlite3 tiny_mlaas.db '.read schema.sql' '.read populate.sql' && \

    git remote add main https://github.com/TinyMLaas/TinyMLaaS.git && \
    git fetch main && \
    git checkout main/main -- TinyMLaaS_main && \

    pip install --no-cache-dir --upgrade -r requirements.txt
