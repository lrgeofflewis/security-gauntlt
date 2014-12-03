#!/usr/bin/env bash
set -e


apt-get update
echo "Installing git"
apt-get -y install git
echo "Installing python dependency"
sudo apt-get install python2.7
sudo apt-get install python-setuptools
echo "Installing ruby 1.9.3"
apt-get install -y ruby-full
#git clone https://github.com/gauntlt/gauntlt.git
echo "Installing gauntlt"
gem install gauntlt
echo "Installing nmap"
apt-get install -y nmap
echo "Installing sqlmap"
cd /vagrant
wget 'https://github.com/sqlmapproject/sqlmap/tarball/master' --output-document=sqlmapproject-sqlmap-0.9-3671-gdcaad75.tar.gz
tar -xvf sqlmapproject-sqlmap-0.9-3671-gdcaad75.tar.gz
cd sqlmapproject-sqlmap-7a04595
python sqlmap.py --version
export SQLMAP_PATH=/vagrant/sqlmapproject-sqlmap-7a04595/sqlmap.py
echo "Installing sslyze"
cd /vagrant
git clone https://github.com/nabla-c0d3/sslyze.git
cd sslyze
python sslyze.py --version
export SSLYZE_PATH=/vagrant/sslyze/sslyze.py
echo "Installing Garmr"
cd /vagrant
git clone https://github.com/freddyb/Garmr.git
cd Garmr
python setup.py install
