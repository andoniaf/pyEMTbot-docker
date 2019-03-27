FROM python:3.7-alpine3.9

MAINTAINER andoniaf

RUN apk add gcc libc-dev libffi-dev openssl-dev

WORKDIR /pyemtbot

COPY requirements.txt /pyemtbot

RUN pip install -r requirements.txt

COPY . /pyemtbot

RUN adduser -D pyuser
USER pyuser

CMD [ "python", "/pyemtbot/bot.py" ]
