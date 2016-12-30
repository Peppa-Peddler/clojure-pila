# !/bin/bash

# Update server
apt-get update
apt-get upgrade -y 

# Install essentials
apt-get -y install build-essential binutils-doc git -y
apt-get -y install unzip
apt-get -y install git

# Install Java 8
sudo apt-get install -y software-properties-common python-software-properties
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
sudo apt-get install oracle-java8-installer
echo "Setting environment variables for Java 8.."
sudo apt-get install -y oracle-java8-set-default

# Install leiningen
wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod +x lein
echo "Setting lein.."
sudo mv lein /usr/local/bin
