FROM ubuntu:latest

LABEL maintainer="bru.iglesias <bruno.iglesias.eng@gmail.com>"

# Copia os arquivos da pasta para o diretório da imagem
COPY . /home/user/Documents/

# Copia apenas o arquivo para o diretório da imagem
COPY index.html /home/user/Documents/

# Expõe a porta 80 da imagem 
EXPOSE 80



