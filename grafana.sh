apt-get install sudo
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y gnupg2 curl
curl https://packages.grafana.com/gpg.key | sudo apt-key add -
sudo apt -y install software-properties-common dirmngr apt-transport-https lsb-release ca-certificates
sudo add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"
sudo apt-get update
sudo apt-get -y install grafana
sudo systemctl start grafana-server
sudo systemctl enable grafana-server
