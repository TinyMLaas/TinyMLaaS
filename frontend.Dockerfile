FROM python:3.10

# Dependency of pyusb
RUN apt update && apt install libusb-1.0

EXPOSE 8501

RUN git clone https://github.com/TinyMLaas/TinyML-frontend.git

WORKDIR /TinyML-frontend

RUN pip install --no-cache-dir --upgrade -r requirements.txt

CMD  ["streamlit", "run", "main_page.py"]



 
