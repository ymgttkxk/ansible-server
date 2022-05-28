#!/bin/bash

# package update
sudo apt update -y && apt upgrade -y && apt autoremove -y
# zero-config
sudo apt install avahi-daemon libnss-mdns
# ansible & git support
sudo apt install ansible git

# playbook(common)をインストール
sudo mkdir -p /opt/ansible/common
cd /opt/ansible/common
sudo git init
sudo git clone https://github.com/ymgttkxk/ansible-roles.git common

mkdir -p ~/ansible/server-init
cd ~/ansible/server-init
git init
git clone https://github.com/ymgttkxk/ansible-server.git
 

# サーバ設定用playbookをインストール
#   static IPv4設定、locale,font日本語設定、DNSなど設定、ユーザ設定
# cd ~/ansible
# mkdir ansible-host
# cd ansible-host
# git init

##### base playbook
### launch lxd container 
# git clone https://github.com/ymgttkxk/ansible-lxd-ubuntu.git

### set container enviroment
# git clone https://github.com/ymgttkxk/ansible-enviroment.git
### set user
# git clone https://github.com/ymgttkxk/ansible-account.git
### ubuntu desktop
# git clone https://github.com/ymgttkxk/ansible-ubuntu-xrdp.git

# 目的別にplaybookをインストール
### ubuntu kodi
# git clone https://github.com/ymgttkxk/ansible-kodi.git

