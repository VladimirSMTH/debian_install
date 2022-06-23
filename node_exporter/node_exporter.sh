apt-get install sudo
wget https://github.com/prometheus/node_exporter/releases/download/v1.3.1/node_exporter-1.3.1.linux-amd64.tar.gz
tar xvfz node_exporter-1.3.1.linux-amd64.tar.gz
cd node_exporter-1.3.1.linux-amd64 
mv node_exporter /usr/local/bin/
sudo useradd -r -M -s /bin/false node_exporter
wget -P /etc/systemd/system/ https://raw.githubusercontent.com/kvacompservice/debian_install/main/node_exporter/node_exporter.service
chown -R node_exporter:node_exporter /usr/local/bin/node_exporter
sudo systemctl daemon-reload 
sudo systemctl start node_exporter
