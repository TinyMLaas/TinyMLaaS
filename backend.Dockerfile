FROM debian:bookworm-slim

EXPOSE 8000

WORKDIR /TinyML-backend

RUN apt-get update && apt-get install -y git ffmpeg python3 python3-venv sqlite3 &&  \
    git clone https://github.com/TinyMLaas/TinyML-backend.git . && \
    touch tiny_mlaas.db && sqlite3 tiny_mlaas.db '.read schema.sql' '.read populate.sql' && \
    git remote add main https://github.com/TinyMLaas/TinyMLaaS.git && \
    git fetch main && \
    git checkout main/main -- TinyMLaaS_main && \
    git remote prune main && \
    python3 -m venv .venv && \
    .venv/bin/pip install --no-cache-dir --upgrade -r requirements.txt && \
    apt-get remove -y git && \
    rm -rf /var/lib/apt/lists/*
