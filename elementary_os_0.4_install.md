elementary_install:
------------------------
# add-apt-repository: command not found
sudo apt install -y  software-properties-common python-software-properties
 
sudo apt install -y  python3-dev python3-pip
pip3 install --upgrade pip

sudo apt install -y  vim
sudo apt install -y  git
sudo apt install -y  snapd


## ss : 1080
# https://github.com/shadowsocks/shadowsocks-libev#install-from-repository
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:max-c-lv/shadowsocks-libev -y
sudo apt-get update
sudo apt install shadowsocks-libev
sudo systemctl enable  shadowsocks-libev-local@hk           #--- @hk 是service的参数"%i"
#Created symlink from /etc/systemd/system/multi-user.target.wants/shadowsocks-libev-local@hk.service to /lib/systemd/system/shadowsocks-libev-local@.service.
sudo cp /etc/shadowsocks-libev/config.json /etc/shadowsocks-libev/hk.json    #--- 文件名对应上面的@参数；修改里面的参数
sudo systemctl start   shadowsocks-libev-local@hk.service


# proxychains-ng
git clone  https://github.com/rofl0r/proxychains-ng.git  ~/Downloads/proxychains-ng
cd  ~/Downloads/proxychains-ng
./configure
make
sudo make install
sudo make install-config
cd -
# modify: '/usr/local/etc/proxychains.conf'
# round_robin_chain
# socks5  192.168.11.10  1080
# socks5  127.0.0.1      1080
proxychains4 curl  ip.sb    # test


# privoxy --- socks5 to http proxy : 8118
sudo apt install -y  privoxy
# sudo vim /etc/privoxy/config
#forward-socks5    /                127.0.0.1:1080
#forward           .zjlh.lan        .
#forward           192.168.*.*/     .
#forward           127.*.*.*/       .
#forward           localhost/       .



sudo apt install -y  ntpdate
sudo apt install -y  openssh-server
sudo apt install -y  nfs-kernel-server
sudo apt install -y  smbclient cifs-utils
 
sudo apt install -y  ntfs-3g
sudo apt install -y  exfat-fuse
  
sudo apt install -y  unzip
sudo apt install -y  p7zip  p7zip-rar
sudo apt install -y  rar  unrar
 
sudo apt install -y  aria2
sudo apt install -y  axel
sudo apt install -y  lftp
 
sudo apt install -y  bmon
sudo apt install -y  iftop
sudo apt install -y  ifstat
sudo apt install -y  sysstat
sudo apt install -y  dstat
sudo apt install -y  virt-manager

sudo apt install -y  tcpdump
sudo apt install -y  nmap zenmap
 
 
# font
sudo apt install -y  ttf-wqy-* 
sudo apt install -y  fonts-wqy-*
sudo apt install -y  xfonts-wqy 
mkdir  ~/.fonts


sudo apt install -y  tmux
sudo apt install -y  tree
sudo apt install -y  lnav
sudo apt install -y  remmina remmina-plugin-rdp  remmina-plugin-vnc
sudo apt install -y  gparted
sudo apt install -y  sqlitebrowser
sudo apt install -y  redis-tools
sudo apt install -y  com.github.luizaugustomm.tomato


sudo apt install -y  tlp
sudo apt install -y  libreoffice  libreoffice-l10n-zh-cn
sudo apt install -y  inkscape
sudo apt install -y  gimp
sudo apt install -y  filezilla
#sudo apt install -y  fcitx  fcitx-googlepinyin
sudo apt install -y  moc  moc-ffmpeg-plugin
#sudo apt install -y  pidgin
sudo apt install -y  chromium-browser
sudo apt install -y  firefox  #firefox-locale-zh-hans
sudo apt install -y  steam


#win+ubuntu:
# 设置时钟为本地时间
sudo timedatectl set-local-rtc 1
sudo ntpdate  cn.ntp.org.cn


# 大小写指示器
sudo add-apt-repository -y -u  ppa:tsbarnes/indicator-keylock
sudo apt install -y  indicator-keylock

# 触摸板
sudo add-apt-repository -y -u  ppa:atareao/atareao
sudo apt install -y  touchpad-indicator


# ansible
sudo apt-add-repository -y -u  ppa:ansible/ansible
sudo apt install -y  ansible




# l2tp client
#sudo add-apt-repository -y -u  ppa:nm-l2tp/network-manager-l2tp  
#sudo apt-get update  
#sudo apt-get install network-manager-l2tp-gnome

# git lfs
# https://git-lfs.github.com/
# look readme


# gitbook 
# https://github.com/GitbookIO/gitbook/blob/master/docs/setup.md
#npm install gitbook-cli -g


# NaSC
sudo apt-add-repository -y -u  ppa:nasc-team/daily
sudo apt  install -y  nasc


# uGet
sudo add-apt-repository -y -u  ppa:plushuang-tw/uget-stable
sudo apt install -y  uget

# deluge
sudo add-apt-repository -y -u  ppa:deluge-team/ppa
sudo apt install -y  deluge

# FlareGet
# https://flareget.com/download


# tweaks配置工具
sudo add-apt-repository -y -u  ppa:philip.scott/elementary-tweaks
sudo apt install -y  elementary-tweaks
 

# virtualbox
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
echo "deb http://download.virtualbox.org/virtualbox/debian xenial contrib" | sudo tee  /etc/apt/sources.list.d/virtualbox.list
sudo apt update
sudo apt install virtualbox-5.2


# chrome
sudo wget http://www.linuxidc.com/files/repo/google-chrome.list -P /etc/apt/sources.list.d/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
sudo apt update
sudo apt install -y  google-chrome-stable 

 
# 命令自动修正thefuck（fuck）
# https://github.com/nvbn/thefuck#manual-installation
#sudo apt install -y  python3-dev python3-pip
#pip3 install --upgrade pip
#pip3 install --user thefuck
# put 'eval $(thefuck --alias)' into ~/.bash_aliases
sudo apt install -y  thefuck 


## pg client
## https://www.postgresql.org/download/linux/ubuntu/
#echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list
#wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | \
#  sudo apt-key add -
#sudo apt-get update
#sudo apt install  postgresql-client-9.6
## /usr/lib/postgresql/9.6/bin/initdb -D /var/lib/postgresql/9.6/main --auth-local peer --auth-host md5
## Success. You can now start the database server using:
##     /usr/lib/postgresql/9.6/bin/pg_ctl -D /var/lib/postgresql/9.6/main -l logfile start
## Ver Cluster Port Status Owner    Data directory               Log file
## 9.6 main    5432 down   postgres /var/lib/postgresql/9.6/main /var/log/postgresql/postgresql-9.6-main.log
#
## pgadmin4
## https://www.postgresql.org/ftp/pgadmin/pgadmin4/v2.0/pip/
## http://blog.csdn.net/dream_an/article/details/53463187
## https://askubuntu.com/questions/675234/oserror-errno-13-permission-denied-usr-local-lib-python2-7-dist-packages-p
#wget  http://xxxxxxxx
## 非sudo权限安装失败
## 启动
## python3 ~/.local/lib/python3.5/site-packages/pgadmin4/pgAdmin4.py
## 登录链接为http://localhost:5050/
## sudo安装
#sudo pip3 install ~/Downloads/pgadmin4-2.0-py2.py3-none-any.whl
## 启动
## sudo  python3  /usr/local/lib/python3.5/dist-packages/pgadmin4/pgAdmin4.py
## 登录链接为http://localhost:5050/，第一次需设置邮箱用户密码
## zhf_sy@163.com / 123456

 
# pgcli --- 自动命令提示
# http://www.postgres.cn/news/viewone/1/313
pip3 install pgcli
sudo pip3 install pgcli


# handbrakehi视频转码，含ong播放器n用dvd解码包，替代w32ocdes
sudo add-apt-repository -y -u  ppa:stebbins/handbrake-releases
sudo apt install -y  handbrake-gtk  handbrake-cli


# wireshark
sudo add-apt-repository -y -u  ppa:wireshark-dev/stable
sudo apt install -y  wireshark
 
 
# wiznote
sudo add-apt-repository -y -u  ppa:wiznote-team
sudo apt install -y  wiznote

 
# jiangguoyun
wget -P ~/Downloads/ https://www.jianguoyun.com/static/exe/installer/ubuntu/nautilus_nutstore_amd64.deb
sudo dpkg -i ~/Downloads/nautilus_nutstore_amd64.deb 
sudo apt install -f


# sublime
sudo add-apt-repository -y -u  ppa:webupd8team/sublime-text-3
sudo apt install -y  sublime-text


# haroopad - markdown
curl  https://bitbucket.org/rhiokim/haroopad-download/downloads/haroopad-v0.13.1-x64.deb  \
    -L  -o ~/Downloads/haroopad-v0.13.1-x64.deb  \
    --socks5 192.168.11.10:1080
sudo dpkg -i  ~/Downloads/haroopad-v0.13.1-x64.deb


# typora - markdown
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
sudo add-apt-repository 'deb http://typora.io linux/'
sudo apt update
sudo apt install -y  typora
# typora 主题：catfish
# http://theme.typora.io/theme/Catfish/
# 支持无衬线字体，衬线字体和等宽字体分别采用思源黑体，思源宋体
# 运行一次才有这个目录 ~/.config/Typora/themes
mkdir ~/.config/Typora/themes
wget  https://github.com/leaf-hsiao/catfish/archive/master.zip  -O ~/.config/Typora/themes/catfish-master.zip
unzip  ~/.config/Typora/themes/catfish-master.zip  -d ~/.config/Typora/themes
mv   ~/.config/Typora/themes/catfish-master/*   ~/.config/Typora/themes/
# select menu [theme]->[catfish]


# file converto pdf...
#wget -P ~/Downloads/  https://github.com/jgm/pandoc/releases/download/1.19.2.1/pandoc-1.19.2.1-1-amd64.deb
#sudo dpkg -i  ~/Downloads/pandoc-1.19.2.1-1-amd64.deb
sudo apt install -y  pandoc



# keepassXC -- 替代keepass2 --- 但是google浏览器插件不给力，所以不装了
#sudo add-apt-repository -y -u  ppa:phoerious/keepassxc
#sudo apt install -y  keepassxc
#浏览器插件


# keepass2
sudo apt-add-repository -y -u  ppa:jtaylor/keepass
sudo apt install -y  keepass2
# 插件keepasshttp
sudo apt install -y  mono-complete
sudo  wget  -P /usr/lib/keepass2/Plugins/  https://raw.github.com/pfn/keepasshttp/master/KeePassHttp.plgx
# 中文语言包解决不了菜单栏乱码问题，可能没有菜单栏用的字体
# 在添加记录的时候，填中文会乱码，解决方法：
# 打开Keepass ----> Tools -> Options -> Interface -> 按钮"Select List Font" --> 选在可以中文的字体；-->把列表中Force using system font (Unix only)的钩钩去掉。
# 用法：http://devzc.com/post/465
 
 

# resilio-sync ---  被墙 --- 香港也不行
# https://help.resilio.com/hc/en-us/articles/206178924-Installing-Sync-package-on-Linux
echo "deb http://linux-packages.resilio.com/resilio-sync/deb resilio-sync non-free" | sudo tee /etc/apt/sources.list.d/resilio-sync.list
curl  https://linux-packages.resilio.com/resilio-sync/key.asc  \
    --socks5 192.168.11.10:1080  \
    | sudo apt-key add -
proxychains4  sudo apt-get update
proxychains4  sudo apt-get install resilio-sync
# Enable sync service as current user:
sudo sed -i 's/WantedBy=multi-user.target/WantedBy=default.target/g' /usr/lib/systemd/user/resilio-sync.service
systemctl --user enable resilio-sync
systemctl --user start resilio-sync
# http://127.0.0.1:8888

 
# remote-tail
git clone   https://github.com/mylxsw/remote-tail.git
wget  https://github.com/mylxsw/remote-tail/releases/download/v0.1.1/remote-tail-linux  -P ./remote-tail
sudo  cp ./remote-tail/remote-tail-linux  /usr/local/bin/remote-tail
 

# telegram
# http://blog.topspeedsnail.com/archives/5116
sudo add-apt-repository  -y -u  ppa:atareao/telegram
sudo apt install -y  telegram




# -----------------------
# deb
wget  https://www.zoom.us/client/latest/zoom_amd64.deb  -P ~/Downloads/
sudo dpkg -i ~/Downloads/zoom_amd64.deb
sudo apt install -f


# Rocket.Chat client
# https://github.com/RocketChat/Rocket.Chat.Electron/releases
proxychains4  wget  https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/2.10.2/rocketchat_2.10.2_amd64.deb  -O ~/Downloads/rocketchat_amd64.deb
sudo  dpkg -i  ~/Downloads/rocketchat_amd64.deb




# ------------------------
# install bin to OPT
mkdir  ~/.opt

# xMind
wget  http://xiazai.xmindchina.cn/trail/xmind-8-linux.zip  -O ~/Downloads/xmind-8-linux.zip
unzip ~/Downloads/xmind-8-linux.zip  -d ~/.opt/xmind/
sudo  ~/.opt/xmind/setup.sh
# cp .desktop  



# elementary OS store
tomato


# shou
# sougoupinyin



# bin.tar
mysql-workbench
lilydict
zsh  oh-my-zsh
autojump




# # 使用代理服务器样例:
#
#
# # apt 使用http代理：
# export http_proxy=http://192.168.11.10:8118 
# apt update
# 
# 
# # git 使用代理
# # 设置代理
# git config --global  https.proxy  socks5://127.0.0.1:1080
# # 取消代理
# git config --global --unset https.proxy
# #
# git config --global  http.proxy  socks5://127.0.0.1:1080
# git config --global  --unset http.proxy
# #
# # 只对github.com代理
# git config --global  http.https://github.com.proxy  socks5://127.0.0.1:1080
# # 取消github.com代理
# git config --global --unset http.https://github.com.proxy
#
#
# # wget使用http代理：
# # -e ： 设置变量，运行一个“.wgetrc”风格的命令
# # -P ： 文件保存路径
# # --no-check-certificate ： 不检查证书
# # wget自动跟随链接重定向
# wget  https://bitbucket.org/rhiokim/haroopad-download/downloads/haroopad-v0.13.1-x64.deb  \
#     -P ~/Downloads/  \
#     -e use_proxy=yes  -e https_proxy=http://192.168.11.10:8118  -e http_proxy=http://192.168.11.10:8118  \
#     --no-check-certificate
# 
# 
# # curl使用代理：
# # -L ： 自动跟随链接重定向
# # -o ： 目标路径文件名（必须）
# # -x ： 使用http代理
# # --socks5 ： 使用socks5代理
# # -k ： 不检查证书
# # http代理:
# curl  https://bitbucket.org/rhiokim/haroopad-download/downloads/haroopad-v0.13.1-x64.deb  \
#     -L  -o ~/Downloads/haroopad-v0.13.1-x64.deb  \
#     -x http://192.168.11.10:8118  \
#     -k
# 
# # socks5代理:
# curl  https://bitbucket.org/rhiokim/haroopad-download/downloads/haroopad-v0.13.1-x64.deb  \
#     -L  -o ~/Downloads/haroopad-v0.13.1-x64.deb  \
#     --socks5 192.168.11.10:1080  \
#     -k



# 拷贝文件
#rsync -av ../pg --exclude=.git root@47.52.22.138:~/
#cp  `ls | grep -v zhidao.txt | xargs`   /test2





# 查看当前互联网ip及城市
curl ip.gs
curl ip.sb


# # 图标与菜单快捷方式
# /usr/share/icons 
# 系统图标文件夹
# ~/.local/share/icons
# 用户图标文件夹
# /usr/share/applications 
# 系统菜单文件夹
# ~/.local/share/applications
# 用户菜单文件夹



