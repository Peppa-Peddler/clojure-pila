# !/bin/bash

# Update server
apt-get update
apt-get upgrade -y 

# Install essentials
apt-get -y install build-essential binutils-doc git -y
apt-get -y install unzip
apt-get -y install git

# Install Java 8
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java{7,8}-installer maven
sudo update-java-alternatives -s java-8-oracle

# Install leiningen
wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod +x lein
sudo mv lein /usr/local/bin
