Installing LAMP on Debian 11:
wget -O - https://raw.githubusercontent.com/VladimirSMTH/debian_install/main/lamp.sh | bash
Then, make mysql_secure_installation pls!
---
Installing Joomla in Docker on Debian 11:
wget -O - https://raw.githubusercontent.com/VladimirSMTH/debian_install/main/docker/joomla.sh | bash
Then, login on http://ip/ to web configurator. (db = joomladb, user = joomla, password = joomla)
---
Installing Prometheus on Debian 11:
wget -O - https://raw.githubusercontent.com/VladimirSMTH/debian_install/main/prometheus/prometheus.sh | bash
Then, go to http://ip:9090/
---
Installing Grafana on Debian 11:
wget -O - https://raw.githubusercontent.com/VladimirSMTH/debian_install/main/grafana.sh | bash
Then, login on http://ip:3000/ with admin-admin
---
Installing Node_exporter on Debian 11:
wget -O - https://raw.githubusercontent.com/VladimirSMTH/debian_install/main/node_exporter/node_exporter.sh | bash
Then, test it on http://ip:9100/
---
