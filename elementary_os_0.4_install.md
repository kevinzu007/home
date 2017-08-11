elementary_install:
------------------------
#win+ubuntu:
sudo timedatectl set-local-rtc 1
#ntpdate  cn.ntp.org.cn


# add-apt-repository: command not found
sudo apt-get install software-properties-common python-software-properties
 
sudo apt install openssh-server
sudo apt install nfs-kernel-server
sudo apt install smbclient cifs-utils
 
sudo apt install  ntfs-3g
sudo apt install  exfat-fuse
  
sudo apt install unzip
sudo apt install p7zip  p7zip-rar
sudo apt install  rar  unrar
 
sudo apt install git
sudo apt install aria2
sudo apt install axel
sudo apt install lftp
 
sudo apt install bmon
sudo apt install iftop
sudo apt install ifstat
sudo apt install sysstat
sudo apt install dstat

sudo apt install shadowsocks
sudo apt install tcpdump
sudo apt install nmap zenmap
 
 
# font
sudo apt-get install ttf-wqy-* 
sudo apt-get install fonts-wqy-*
sudo apt-get install xfonts-wqy 
mkdir  ~/.fonts


sudo apt install tmux
sudo apt install vim
sudo apt install tree
sudo apt install lnav
sudo apt install remmina remmina-plugin-rdp  remmina-plugin-vnc
sudo apt  install  gparted
sudo apt  install  sqlitebrowser


sudo apt install  tlp
sudo apt install  libreoffice  libreoffice-l10n-zh-cn
sudo apt install  inkscape
sudo apt install  gimp
sudo apt install  filezilla
sudo apt install  fcitx  fcitx-googlepinyin
sudo apt install  moc  moc-ffmpeg-plugin
sudo apt install  pidgin
sudo apt install  firefox
sudo apt install  steam

# NaSC
sudo apt-add-repository ppa:nasc-team/daily
sudo apt  update
sudo apt  install nasc

# deluge
sudo add-apt-repository  ppa:deluge-team/ppa
sudo apt  update
sudo apt  install deluge

# tweaks配置工具
sudo add-apt-repository ppa:philip.scott/elementary-tweaks && sudo apt update
sudo apt install  elementary-tweaks
 
# virtualbox
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
echo "deb http://download.virtualbox.org/virtualbox/debian xenial contrib" | sudo tee  /etc/apt/sources.list.d/virtualbox.list
sudo apt install virtualbox-5.1

# pg --- https://www.postgresql.org/download/linux/ubuntu/
echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | \
  sudo apt-key add -
sudo apt-get update
sudo apt install  postgresql-client-9.6
# /usr/lib/postgresql/9.6/bin/initdb -D /var/lib/postgresql/9.6/main --auth-local peer --auth-host md5
# Success. You can now start the database server using:
#     /usr/lib/postgresql/9.6/bin/pg_ctl -D /var/lib/postgresql/9.6/main -l logfile start
# Ver Cluster Port Status Owner    Data directory               Log file
# 9.6 main    5432 down   postgres /var/lib/postgresql/9.6/main /var/log/postgresql/postgresql-9.6-main.log

# pgadmin4
# http://www.linuxprobe.com/ubuntu-pgadmin-postgresql.html
 
 
# handbrakehi视频转码，含ong播放器n用dvd解码包，替代w32ocdes
sudo add-apt-repository ppa:stebbins/handbrake-releases
sudo apt update
sudo  apt install handbrake-gtk  handbrake-cli


# wireshark
sudo add-apt-repository ppa:wireshark-dev/stable
sudo apt update
sudo apt install wireshark
 
 
# sublime
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt update
sudo apt install sublime-text
 

# haroopad
aria2c  https://bitbucket.org/rhiokim/haroopad-download/downloads/haroopad-v0.13.1-x64.deb
sudo dpkg -i  haroopad-v0.13.1-x64.deb
 

# chrome
sudo wget https://repo.fdzh.org/chrome/google-chrome.list -P /etc/apt/sources.list.d/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
sudo apt update
sudo apt install  google-chrome-stable 
 
 
# keepass2
sudo apt-add-repository ppa:jtaylor/keepass
sudo apt update
sudo apt install  keepass2
# 插件keepasshttp
sudo apt install mono-complete
sudo  wget  -P /usr/lib/keepass2/Plugins/  https://raw.github.com/pfn/keepasshttp/master/KeePassHttp.plgx
# 在添加记录的时候，填中文会乱码，解决方法：
# 打开Keepass ----> Tools -> Options -> Interface -> 按钮"Select List Font" --> 选在可以中文的字体（也可以把列表中Force using system font (Unix only)的钩钩去掉，这种方法预览框还是乱码）
# 用法：http://devzc.com/post/465
 
 
# wiznote
sudo add-apt-repository  ppa:wiznote-team
sudo apt update
sudo apt install  wiznote
 
 
# jiangguoyun
wget  https://www.jianguoyun.com/static/exe/installer/ubuntu/nautilus_nutstore_amd64.deb
sudo dpkg -i nautilus_nutstore_amd64.deb 
sudo apt install -f

# resilio-sync
echo "deb http://linux-packages.resilio.com/resilio-sync/deb resilio-sync non-free" | sudo tee /etc/apt/sources.list.d/resilio-sync.list
wget -qO - https://linux-packages.resilio.com/resilio-sync/key.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install resilio-sync
 
 
# remote-tail
git clone   https://github.com/mylxsw/remote-tail.git
wget  https://github.com/mylxsw/remote-tail/releases/download/v0.1.1/remote-tail-linux  -P ./remote-tail
sudo  cp ./remote-tail/remote-tail-linux  /usr/local/bin/remote-tail
 

# 命令自动修正thefuck（fuck）
sudo apt install python3-dev python3-pip
pip3 install --upgrade pip
pip3 install --user thefuck

 
# youdao
# 1. 从官方下载Ubuntu版本的deb包：youdao-dict_1.1.0-0-ubuntu_amd64.deb
wget  http://codown.youdao.com/cidian/linux/youdao-dict_1.1.0-0-ubuntu_amd64.deb
# 2. 创建youdao-dict目录，把该deb包解压到youdao-dict目录：
mkdir youdao-dict
dpkg -X ./youdao-dict_1.1.0-0-ubuntu_amd64.deb  youdao-dict
# 3. 解压deb包中的control信息（包的依赖就写在这个文件里面）：
dpkg -e ./youdao-dict_1.1.0-0-ubuntu_amd64.deb youdao-dict/DEBIAN
# 4. 编辑control文件，删除Depends里面的gstreamer0.10-plugins-ugly。
vim  ./youdao-dict/DEBIAN/control
# 5. 重新打包：
dpkg-deb -b youdao-dict/  youdaobuild.deb
# 6. 安装重新打包的安装包
sudo  dpkg -i  youdaobuild.deb
sudo apt  install  -f
 




mysql-workbench
virtualbox
/opt/lilydict/

zsh  oh-my-zsh
autojump


home
blog




