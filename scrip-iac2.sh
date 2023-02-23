#!/bin/bash

echo "Atualizando Servidor..."

apt-get update && apt-get upgrade -y

echo "Instalando o apache 2 e unzip..."

apt-get install apache2 unzip

echo "Iniciando serviços apache.."

systemctl enable --now apache2

echo "Entra no diretorio /tmp..."

cd /tmp

echo "baixandos arquivos html..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Desconpaquintando arquivos html com o unzip..."

unzip main.zip

echo "Logando no diretorio Linux  site Dio..."

cd linux-site-dio-main

echo "Copiando arquiovos para o diretorio web do Apache..."

cp -R * /var/www/html/

echo "Final do processo implemtação de um servidor web V.1..."
