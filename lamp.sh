apt-get install sudo
sudo apt update && sudo apt upgrade -y
apt-get install curl
sudo apt-get install software-properties-common dirmngr ca-certificates apt-transport-https nano wget curl -y
curl -sSL https://packages.sury.org/apache2/README.txt | sudo bash -x
sudo apt install apache2 -y
sudo systemctl enable apache2 --now
curl -LsS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | sudo bash -s -- --mariadb-server-version=10.7 --skip-maxscale --skip-tools
sudo apt update
sudo apt install mariadb-server mariadb-client -y
sudo systemctl enable mariadb
curl -sSL https://packages.sury.org/php/README.txt | sudo bash -x
sudo apt upgrade -y
sudo apt install php8.1 libapache2-mod-php8.1 -y
sudo a2enmod php8.1
sudo systemctl restart apache2
