FROM python:3.10

# Dependency of pyusb
RUN apt update && apt-get install libusb-1.0

EXPOSE 8501

RUN git clone https://github.com/TinyMLaas/TinyML-frontend.git

WORKDIR /TinyML-frontend

RUN pip install --no-cache-dir --upgrade -r requirements.txt

CMD  ["streamlit", "run", "TinyMLaaS.py"]



 
