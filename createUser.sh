#!/bin/bash
echo " Comeco do Programa:"
echo " 1- Criando Diretorios..."
echo " Criando o diretorio publico em /publico"
mkdir /publico

echo " Criando o diretorio adm em /adm"
mkdir /adm

echo " Criando o diretorio ven em /ven"
mkdir /ven

echo " Criando o diretorio sec em /sec"
mkdir /sec

echo " Diretorios criados...."

echo " Criando grupo de usuarios..."
echo " Criando o grupo GRP_ADM..."
groupadd GRP_ADM

echo " Criando o grupo GRP_VEN..."
groupadd GRP_VEN

echo " Criando o grupo GRP_SEC..."
groupadd GRP_SEC

echo " Grupos criados..."

echo " criando os Usuarios..."

echo " Criando usuarios do grupo ADM."
 echo " criando o usuario carlos..."
  useradd carlos -m -s /bin/bash -p $(openssl passwd ubuntu123) -G GRP_ADM
 echo " usuario carlos criado..."

 echo " criando a usuaria maria..."
  useradd maria -m -s /bin/bash -p $(openssl passwd ubuntu123) -G GRP_ADM
 echo " usuaria maria criada..."

 echo " criando o usuario joao..."
  useradd joao -m -s /bin/bash -p $(openssl passwd ubuntu123) -G GRP_ADM
 echo " usuario joao criado..."
echo " criado os usuarios do grupo ADM..."

echo " Criando usuarios do grupo VEN." 
 echo " criando a usuaria debora..."
  useradd debora -m -s /bin/bash -p $(openssl passwd ubuntu123) -G GRP_VEN
 echo " usuaria debora criada..."

 echo " criando a usuaria sebastiana..."
  useradd sebastiana -m -s /bin/bash -p $(openssl passwd ubuntu123) -G GRP_VEN
 echo " usuaria sebastiana criada..."

 echo " criando o usuario roberto..."
  useradd roberto -m -s /bin/bash -p $(openssl passwd ubuntu123) -G GRP_VEN
 echo " usuario roberto criado..."
echo " criado os usuarios do grupo VEN..."


echo " Criando usuarios do grupo SEC." 
 echo " criando a usuaria josefina..."
  useradd josefina -m -s /bin/bash -p $(openssl passwd ubuntu123) -G GRP_SEC
 echo " usuaria josefina criada..."

 echo " criando a usuaria amanda..."
  useradd amanda -m -s /bin/bash -p $(openssl passwd ubuntu123) -G GRP_SEC
 echo " usuaria amanda criada..."

 echo " criando o usuario rogerio..."
  useradd rogerio -m -s /bin/bash -p $(openssl passwd ubuntu123) -G GRP_SEC
 echo " usuario rogerio criado..."
echo " criado os usuarios do grupo SEC..."

echo " Usuarios adicionados aos seus respectivos grupos..."

echo " Especificando as permissoes dos diretorios criados..."

echo " Criando os donos das pastas do grupo ADM... "
 chown root.GRP_ADM /adm
echo " Permissao criada do grupo ADM... "

echo " Criando os donos das pastas do grupo VEN... "
 chown root.GRP_VEN /ven
echo " Permissao criada do grupo VEN... "

echo " Criando os donos das pastas do grupo SEC... "
 chown root.GRP_SEC /sec
echo " Permissao criada do grupo SEC... "

echo " Permissoes dos grupos criadas..."

echo " Definindo a entrada nas pastas criadas..."
echo " Criando a definicao de entrada de pastas e arquivos do grupo ADM..."
chmod 770 /adm
echo " Definicao de entrada de pastas e arquivos do grupo ADM criada."

echo " Criando a definicao de entrada de pastas e arquivos do grupo VEN..."
chmod 770 /ven
echo " Definicao de entrada de pastas e arquivos do grupo VEN criada."

echo " Criando a definicao de entrada de pastas e arquivos do grupo SEC..."
chmod 770 /sec
echo " Definicao de entrada de pastas e arquivos do grupo SEC criada."

echo " Criando a permissao e o acesso da pasta publico tambem..."
chmod 777 /publico
echo " Permissao de acesso livre na pasta publico..."
echo " Fim..."
