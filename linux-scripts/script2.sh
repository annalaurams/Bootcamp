Estar logado como root

#! /bin/bash

echo "Servidor sendo atualizado"

Atualizar servidor
    apt-get update
    apt-get upgrade -y

echo "Instalando Apache e Unzip"

Separado:
    apt-get install -y apache2
    apt-get install -y unzip

Junto:
    apt-get install -y apache2 unzip

echo "Baixando arquivos do site"

echo "Baixando arquivos do site"

cd /tmp 
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R */var/ww/html

echo "Para dar permissão de execução"

chmod +x script2.sh

echo "Executar"

./script2.sh                                     