#!/bin/bash

# Provisionamento de um servidor Linux com criação de usuários, grupos, permissões e diretórios 
# para os departamentos de uma empresa:
#
# ADM - Administração
# VEN - Vendas
# SEC - Secretariado
#
# Obs.: Este scrict deve ser executado por um usuário com permissão de administrador.

echo "Iniciando script..."

echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# No OpenSSL 3.0 em diante é necessário trocar o parâmetro -crypt por -salt
echo "Criando usuários do grupo ADM..."
useradd carlos -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd maria -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd joao -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_ADM

echo "Criando usuários do grupo VEN..."
useradd debora -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd sebastiana -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd roberto -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_VEN

echo "Criando usuários do grupo SEC..."
useradd josefina -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd amanda -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd rogerio -s /bin/bash -m -p $(openssl passwd -crypt senha123) -G GRP_SEC

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