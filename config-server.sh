#!/bin/bash

# Executa comandos como super user
sudo su

# Criando grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

# Criando usuários do grupo ADM
useradd carlos -s /bin/bash -m -p $(openssl passwd -crypt senha123)
passwd carlos -e

useradd maria -s /bin/bash -m -p $(openssl passwd -crypt senha123)
passwd maria -e

useradd joao -s /bin/bash -m -p $(openssl passwd -crypt senha123)
passwd joao -e

# Criando diretórios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

# Alterando grupos dos diretórios
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

# Alterando permissões dos diretórios
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec