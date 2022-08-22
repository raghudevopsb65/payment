FROM        python:3
RUN         useradd roboshop
RUN         mkdir /app
RUN         chown roboshop /app
WORKDIR     /app
USER        roboshop

ADD         payment.ini .
ADD         payment.py .
ADD         rabbit