#!/usr/bin/env bash
THIS_DIR=$(cd $(dirname $0); pwd)
Version=`lsb_release -rs | cut -f1 -d"."`
install() {
echo -e "\033[0;36m"
echo -e "~ Welcome To Source David - اهلا بك في سورس ديفد ~"
echo -e "     ~ { Setting Up Offices - جاري رفع المكاتب } ~"
echo -e "\033[0m"
apt update
apt upgrade
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install tmux
sudo apt-get install luarocks
sudo apt-get install screen
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev make unzip git redis-server autoconf g++ libjansson-dev libpython-dev expat libexpat1-dev
sudo apt-get update
sudo apt-get install
sudo apt-get install upstart-sysv
wget http://luarocks.org/releases/luarocks-2.2.2.tar.gz;tar zxpf luarocks-2.2.2.tar.gz;cd luarocks-2.2.2 && ./configure
sudo make bootstrap
sudo luarocks install luasocket
sudo luarocks install luasec
sudo apt-get install libconfig++9v5 -y 
sudo apt-get install libstdc++6 -y
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y 
sudo apt-get install lua-lgi -y  
sudo apt-get install libnotify-dev -y 
sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev lua-socket lua-sec lua-expat libevent-dev make unzip git redis-server autoconf g++ libjansson-dev libpython-dev expat libexpat1-dev -y
sudo apt-get update 
sudo apt-get upgrade -y
wget "https://raw.githubusercontent.com/temmali/Devali/main/Dali.lua"
sudo timedatectl set-timezone Asia/Baghdad
echo -e "\033[0;36m"
echo -e "---------------------------------------------"                                       
echo -e "|        ____              _   _            |"
echo -e "|       |  _ \  ___ _    _(_) | |_          |"
echo -e "|       | | | |/ _ \ \  / / |/ _  |         |" 
echo -e "|       | |_| | (_| |\ V /| | (_| |         |"
echo -e "|       |____/ \__,_| \_/ |_|\__,_|         |"
echo -e "|-------------------------------------------|"
echo -e "| This Source Was Developed By (Rio) @W5555.|"
echo -e "|   This Is The Source Channel @L9L9L .     |"
echo -e "|                - David -                  |"
echo -e "---------------------------------------------"
echo -e "\033[0m"
cd $THIS_DIR && sudo chmod +x tg
lua Dali.lua
}
if [ "$1" = "install" ]; then
install
else
if [ ! -f ./tg ]; then
echo -e "\033[0;31m\n~ The tg File Was Not Found In The Bot Files\n\033[0;33m"
exit 1
fi
cd $THIS_DIR && sudo chmod +x tg
lua Dali.lua
fi
