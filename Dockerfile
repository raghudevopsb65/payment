FROM        python:3
RUN         mkdir /app
WORKDIR     /app

ADD         payment.ini .
ADD         payment.py .
ADD         rabbitmq.py .
ADD         requirements.txt .
RUN         pip3 install -r requirements.txt
ENTRYPOINT  ["uwsgi", "--ini", "payment.ini"]
