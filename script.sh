# Início do projeto:

nano iacl.sh
/bin/bash

echo "Criando diretórios"

mkdir -p /publico /adm /ven /sec

echo "Criando grupos"

#Para verificar se o grupo existe antes de criar, adicione:

getent group nome-grupo

groupadd GRUPO_ADM
groupadd GRUPO_SEC
groupadd GRUPO_VEN

echo "Criando usuários"

#Para verificar se o usuário existe antes de criar, adicione:

id -u nome-usuario &>/dev/null 

useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRUPO_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRUPO_ADM
useradd romeu -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRUPO_ADM

useradd olivia -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRUPO_VEN
useradd aurora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRUPO_VEN
useradd raul -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRUPO_VEN

useradd diana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRUPO_SEC
useradd theo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRUPO_SEC
useradd laura -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRUPO_SEC

echo "Especificando permissões dos diretórios"

chown root:GRUPO_ADM /adm
chown root:GRUPO_VEN /ven
chown root:GRUPO_SEC /sec

chmod 770 /adm
chmod 777 /publico
chmod 770 /sec
chmod 770 /ven

echo "Fim do projeto!"
