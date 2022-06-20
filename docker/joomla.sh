apt-get update
apt-get install docker.io -y
docker network create joomla-network
docker pull mysql:5.7
docker pull joomla
docker volume create mysql-data
docker volume inspect mysql-data
ln -s /var/lib/docker/volumes/mysql-data/_data /mysql
docker run -d --name joomladb  -v mysql-data:/var/lib/mysql --network joomla-network -e "MYSQL_ROOT_PASSWORD=joomla" -e MYSQL_USER=joomla -e "MYSQL_PASSWORD=joomla" -e "MYSQL_DATABASE=joomla" mysql:5.7
docker volume create joomla-data
docker volume inspect joomla-data
ln -s /var/lib/docker/volumes/joomla-data/_data /joomla
docker run -d --name joomla -p 80:80 -v joomla-data:/var/www/html --network joomla-network -e JOOMLA_DB_HOST=joomladb -e JOOMLA_DB_USER=joomla -e JOOMLA_DB_PASSWORD=joomla joomla
docker start joomladb
docker start joomla
