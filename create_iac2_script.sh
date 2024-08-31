#!/bin/bash

echo "Executando o script de provisionamento..."

echo "Atualizando o servidor..."
apt update
apt upgrade -y

echo "Instalando o apache"
apt install apache2 -y

echo "Instalando o unzip"
apt install unzip -y

echo "Baixando a aplicação WEB..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
echo "Copiando o arquivo da aplicação WEB para pasta do Apache"
cp -R * /var/www/html/

