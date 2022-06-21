apt-get install sudo
sudo apt-get install curl -y
sudo mkdir /etc/prometheus
sudo mkdir /var/lib/prometheus
curl -s https://api.github.com/repos/prometheus/prometheus/releases/latest|grep browser_download_url|grep linux-amd64|cut -d '"' -f 4|wget -qi -
tar -xvf prometheus-2.36.2.linux-amd64.tar.gz
sudo mv prometheus-2.36.2.linux-amd64/* /etc/prometheus/
rmdir prometheus-2.36.2.linux-amd64
sudo cp /etc/prometheus/prometheus /usr/local/bin/
sudo cp /etc/prometheus/promtool /usr/local/bin/
wget -O /etc/systemd/system/prometheus.service https://raw.githubusercontent.com/kvacompservice/debian_install/main/prometheus/prometheus.service
sudo systemctl daemon-reload
sudo systemctl enable --now prometheus
