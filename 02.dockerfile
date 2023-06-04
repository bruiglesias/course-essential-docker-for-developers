FROM python:3.9.0-alpine

FROM ubuntu:latest

LABEL maintainer="bru.iglesias <bruno.iglesias.eng@gmail.com>"

COPY . /var/www

# Diretório de trabalho no qual a aplicação vai rodar
WORKDIR /var/www

# apk equivale o apt (instala as dependencias da aplicação)
RUN apk update && apk zlib-dev jpeg-dev gcc musl-dev && pip install -r requirements.txt && python manage.py migrate

# Comando executado no workdir assim que o container é criado (starta a aplicação)
ENTRYPOINT python manage.py runserver 0.0.0.0:8000

EXPOSE 8000




