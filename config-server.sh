#!/bin/bash

echo "Executando comandos como super usuário..."
sudo su

echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários do grupo ADM..."
useradd carlos -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_ADM carlos
useradd maria -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_ADM maria
useradd joao -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_ADM joao

echo "Criando usuários do grupo VEN..."
useradd debora -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_VEN debora
useradd sebastiana -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_VEN sebastiana
useradd roberto -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_VEN roberto

echo "Criando usuários do grupo SEC..."
useradd josefina -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_SEC josefina
useradd amanda -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_SEC amanda
useradd rogerio -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_SEC rogerio

echo "Criando diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Alterando permissões dos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Final do script!"