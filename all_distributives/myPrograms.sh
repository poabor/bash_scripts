#!/bin/bash
# Скрип устанавливает/обновляет gramps
sudo apt-get install gramps -y
echo '> gramps установлен!'

# Скрип устанавливает/обновляет resilio-sync
sudo apt install curl -y
echo "deb http://linux-packages.resilio.com/resilio-sync/deb resilio-sync non-free" | sudo tee /etc/apt/sources.list.d/resilio-sync.list
curl -LO http://linux-packages.resilio.com/resilio-sync/key.asc && sudo apt-key add ./key.asc
sudo apt-get update
sudo apt-get install resilio-sync -y
sudo systemctl enable resilio-sync
sudo service resilio-sync start
echo '> resilio-sync установлен!'