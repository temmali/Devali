#!/usr/bin/env bash
cd $HOME/Devali
rm -rf $HOME/.telegram-cli
install() {
rm -rf $HOME/.telegram-cli
sudo chmod +x tg
chmod +x Devali
chmod +x tali
./tali
}
if [ "$1" = "ins" ]; then
install
fi
chmod +x install.sh
lua start.lua
