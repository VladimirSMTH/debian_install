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
sudo apt-get install expect -y
SECURE_MYSQL=$(expect -c "
set timeout 10
spawn mysql_secure_installation
expect \"Enter current password for root (enter for none):\"
send \"$MYSQL\r\"
expect \"Change the root password?\"
send \"n\r\"
expect \"Remove anonymous users?\"
send \"y\r\"
expect \"Disallow root login remotely?\"
send \"y\r\"
expect \"Remove test database and access to it?\"
send \"y\r\"
expect \"Reload privilege tables now?\"
send \"y\r\"
expect eof
")
echo "$SECURE_MYSQL"
