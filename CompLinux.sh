#!/bin/bash

#Vê se tem privilégio de ROOT
if [ "$EUID" -ne 0 ]
  then echo "Você deve ter privilégios de root para executar o "
  read
  exit
fi;
#ATUALIZA O APT
apt-get update;
#INSTALAÇÕES APT
sudo apt update && sudo apt install -y --allow-unauthenticated snapd gcc g++ git synaptic ssh swi-prolog flameshot
#DEVALOPER
sudo snap install node --classic
sudo snap install code --classic
sudo snap install insomnia robo3t-snap
#COMUNICATION
sudo snap install discord --classic 
sudo snap install mailspring obs-studio
#OUTROS
sudo snap install spotify vlc gimp whatsdesk
#ADICIONANDO REPOSITÓRIOS APT
sudo apt-add-repository ppa:swi-prolog/stable
sudo add-apt-repository ppa:transmissionbt/ppa
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -

#Coloca o chrome no sources.list
sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list

sudo apt update
sudo apt install -y google-chrome-stable mongodb-org

npm install -g nodemon

printf '\n\n\n\n\n\n\nPor favor reinicie o computador para finalizar a instalação dos programas\n\n'