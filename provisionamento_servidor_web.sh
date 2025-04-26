#!/bin/bash

echo "Atualizando o servidor"
apt-get update -y
apt-get upgrade -y

echo "Instalando Aplicações"
apt-get install -y apache2 
apt-get install -y unzip

echo "Obtendo arquivos do website"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/main.zip

echo "Descompactando website"
unzip main.zip

echo "Instalando website no servidor web..."
cd linux-site-dio-main
cp -R * /var/www/html/
