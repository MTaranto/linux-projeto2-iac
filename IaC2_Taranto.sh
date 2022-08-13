#!/bin/bash

echo "Atualizando servidor..."
sudo apt-get update && apt-get upgrade -y
sudo apt-get install apache2 -y
sudo apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/MTaranto/voting-machine-js/archive/refs/heads/main.zip
unzip main.zip
cd voting-machine-js-main
cp -R * /var/www/html/


