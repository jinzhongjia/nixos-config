#!/bin/bash

docker run -d --name aria2-pro --restart unless-stopped --network host -e PUID=$UID -e PGID=$GID -e RPC_SECRET=aria2rpc -e RPC_PORT=6800 -e LISTEN_PORT=6888 -v ~/aria2-config:/config -v ~/下载:/downloads p3terx/aria2-pro

docker run -itd --name qq-data --restart always -p 127.0.0.1:27017:27017 mongo

docker run -d --restart=always --privileged --network=host --name v2raya -e V2RAYA_ADDRESS=0.0.0.0:2017 -v /lib/modules:/lib/modules:ro -v /etc/resolv.conf:/etc/resolv.conf -v /etc/v2raya:/etc/v2raya mzz2017/v2raya
