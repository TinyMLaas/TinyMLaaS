FROM python:3.10

EXPOSE 8000

RUN git clone https://github.com/TinyMLaas/TinyML-backend.git

RUN pip install --no-cache-dir --upgrade -r requirements.txt