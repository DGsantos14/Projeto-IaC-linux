#!/bin/bash

echo "Iniciando as configurações da estrutura de usuarios e diretorios via scripts.."

echo "Criando os diretórios ..."

echo " Criando o diretório publico..."

mkdir /publico

echo " Criando o diretório adm..."

mkdir /adm

echo " Criando o diretório ven..."

mkdir /ven

echo " Criando o diretório sec..."

mkdir /sec

echo "Diretórios criados...

Iniciando a criação dos Grupos de usuários

..."

echo " Criando o grupo GRP_ADM..."

groupadd GRP_ADM

echo " Criando o grupo GRP_VEN..."

groupadd GRP_VEN

echo " Criando o grupo GRP_SEC..."

groupadd GRP_SEC

echo "Grupos de usuários criados..

Iniciando a criação dos usuários

..."

echo " Criando usuários que farão parte do grupo GRP_ADM.."

useradd carlos -m -s /bin/bash -p  $(openssl passwd -crypt Senha123)  -G GRP_ADM
passwd carlos -e

useradd maria -m -s /bin/bash -p  $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd maria -e

useradd joao -m -s /bin/bash -p  $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd joao -e

echo " Criando usuários que farão parte do grupo GRP_VEN..."

useradd debora -m -s /bin/bash -p  $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd debora -e

useradd sebastiana -m -s /bin/bash -p  $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd sebastiana -e

useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd roberto -e

echo " Criando usuários que farão parte do grupo GRP_SEC..."

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd josefina -e

useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd amanda -e

useradd rogerito -m -s /bin/bash -p  $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd rogerito -e

echo " Usuários criados e adicionados aos grupo conforme a especificação de cada um.."

echo " Especificandos as permições dos diretorios..."

echo " Definição para o grupo GRP_ADM..."

chown root:GRP_ADM /adm
chmod 770 /adm

echo " Definição para o grupo GRP_VEN..."

chown root:GRP_VEN /ven
chmod 770 /ven

echo " Definição para o grupo GRP_SEC..."

chown root:GRP_SEC /sec
chmod 770 /sec

echo " Definindo permissão total ao diretorio publico a todos os usuários.."

chmod 777 /publico

echo " Definição concluida..."

echo " Finalizado todas as configurações, processo de configuração finalizado..."






