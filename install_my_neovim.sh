#!/bin/bash

sudo apt update
sudo apt install git -y
sudo apt install libtool-bin -y
sudo apt install make -y
sudo apt install cmake -y
sudo apt install pkg-config -y
sudo apt install unzip -y
sudo apt install g++ -y
sudo apt install gcc -y
sudo apt install gettext -y

rm -rf ~/myneovim
rm -rf ~/diffneovim

mkdir -p ~/myneovim
mkdir -p ~/diffneovim

cd ~/myneovim

git init
git remote add origin https://github.com/jwhite510/neovim.git
git fetch origin
git checkout linematch_4


make CMAKE_INSTALL_PREFIX=/home/$USER/diffneovim/ CMAKE_BUILD_TYPE=RelWithDebInfo install
