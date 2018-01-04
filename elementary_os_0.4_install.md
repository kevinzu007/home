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
sudo apt install  firefox firefox-locale-zh-hans
sudo apt install  steam


# 大小写指示器
sudo add-apt-repository ppa:tsbarnes/indicator-keylock
sudo apt-get update
sudo apt-get install indicator-keylock

# 触摸板
sudo add-apt-repository ppa:atareao/atareao
sudo apt-get update
sudo apt-get install touchpad-indicator
## 方法2：开启or禁用触摸板
#sudo modprobe -r psmouse 或 sudo rmmod psmouse    #--- 禁用
#sudo modprobe psmouse #--- 启用


# ss
sudo apt install shadowsocks
sudo cp /etc/shadowsocks-libev/config.json /etc/shadowsocks-libev/local-xg.json
# vim /etc/shadowsocks-libev/local-xg.json
sudo systemctl enable  shadowsocks-libev-local@local-xg
sudo systemctl start   shadowsocks-libev-local@local-xg

# socks5 to http proxy
# polipo or privoxy
sudo apt install privoxy
# sudo vim /etc/privoxy/config
#forward-socks5    /                127.0.0.1:1080
#forward           .zjlh.lan        .
#forward           192.168.*.*/     .
#forward           127.*.*.*/       .
#forward           localhost/       .


# polipo has not update
# http://droidyue.com/blog/2016/04/04/set-shadowsocks-proxy-for-terminal/index.html
sudo apt install  polipo
#sudo vim /etc/polipo/config
# socksParentProxy = "localhost:1080"
# socksProxyType = socks5
# logLevel=4
sudo /lib/systemd/systemd-sysv-install enable polipo
sudo systemctl enable polipo.service
sudo systemctl start  polipo.service

# l2tp client
sudo add-apt-repository ppa:nm-l2tp/network-manager-l2tp  
sudo apt-get update  
sudo apt-get install network-manager-l2tp-gnome

# git lfs
# https://git-lfs.github.com/
# look readme


# gitbook 
# https://github.com/GitbookIO/gitbook/blob/master/docs/setup.md
npm install gitbook-cli -g


# NaSC
sudo apt-add-repository ppa:nasc-team/daily
sudo apt  update
sudo apt  install nasc

# uGet


# FlareGet
# https://flareget.com/download


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

# pg client
# https://www.postgresql.org/download/linux/ubuntu/
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
 
# pgcli
# http://www.postgres.cn/news/viewone/1/313
sudo pip install pgcli

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


# typora - markdown
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
sudo add-apt-repository 'deb http://typora.io linux/'
sudo apt-get update
sudo apt-get install typora
# typora 主题：catfish
# http://theme.typora.io/theme/Catfish/
# 支持无衬线字体，衬线字体和等宽字体分别采用思源黑体，思源宋体
wget  https://github.com/leaf-hsiao/catfish/archive/master.zip  -O ~/.config/Typora/themes/catfish-master.zip
unzip  ~/.config/Typora/themes/catfish-master.zip  
mv   ~/.config/Typora/themes/catfish-master/*   ~/.config/Typora/themes/
# select menu [theme]->[catfish]


# file converto pdf...
wget  https://github.com/jgm/pandoc/releases/download/1.19.2.1/pandoc-1.19.2.1-1-amd64.deb
sudo dpkg -i  pandoc-1.19.2.1-1-amd64.deb


# haroopad - markdown
aria2c  https://bitbucket.org/rhiokim/haroopad-download/downloads/haroopad-v0.13.1-x64.deb
sudo dpkg -i  haroopad-v0.13.1-x64.deb
 

# chrome
sudo wget https://repo.fdzh.org/chrome/google-chrome.list -P /etc/apt/sources.list.d/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
sudo apt update
sudo apt install  google-chrome-stable 
 

# keepassXC -- 替代keepass2
sudo add-apt-repository ppa:phoerious/keepassxc
sudo apt update
sudo apt install keepassxc
#浏览器插件
 

# keepass2
sudo apt-add-repository ppa:jtaylor/keepass
sudo apt update
sudo apt install  keepass2
# 插件keepasshttp
sudo apt install mono-complete
sudo  wget  -P /usr/lib/keepass2/Plugins/  https://raw.github.com/pfn/keepasshttp/master/KeePassHttp.plgx
# 中文语言包解决不了菜单栏乱码问题，可能没有菜单栏用的字体
# 在添加记录的时候，填中文会乱码，解决方法：
# 打开Keepass ----> Tools -> Options -> Interface -> 按钮"Select List Font" --> 选在可以中文的字体；-->把列表中Force using system font (Unix only)的钩钩去掉。
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
# https://help.resilio.com/hc/en-us/articles/206178924-Installing-Sync-package-on-Linux
echo "deb http://linux-packages.resilio.com/resilio-sync/deb resilio-sync non-free" | sudo tee /etc/apt/sources.list.d/resilio-sync.list
wget -qO - https://linux-packages.resilio.com/resilio-sync/key.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install resilio-sync
# Enable sync service as current user:
sudo sed -i 's/WantedBy=multi-user.target/WantedBy=default.target/g' /usr/lib/systemd/user/resilio-sync.service
systemctl --user enable resilio-sync
systemctl --user start resilio-sync
# http://127.0.0.1:8888

 
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
 


xMind
wget  http://xiazai.xmindchina.cn/trail/xmind-8-linux.zip
unzip xmind-8-linux.zip -d /opt/xmind/
sudo /opt/xmind/setup.sh
modify   XMind_Linux_64bit/XMind.ini


tomato

mysql-workbench
virtualbox
/opt/lilydict/
teletram
zoom
rocket.chat



zsh  oh-my-zsh
autojump


home
blog



# 使用代理服务器样例:
# apt 使用http代理：
export http_proxy=http://localhost:8123 
apt update

# wget 使用http代理：
wget  -e "http_proxy=http://localhost:8123"   http://www.wo.com/xx.zip
-e  执行命令，此处设置环境变量，运行一个“.wgetrc”风格的命令
##或
export http_proxy=http://localhost:8123
wget http://www.wo.com/xx.zip

# curl 使用socket代理：
-x [PROTOCOL://]HOST[:PORT]
curl  -x 192.168.11.6:1080  -L <url/filename1>  -o </path/filename2>
-x  设置代理，格式为host[:port]，port的缺省值为1080
#
# curl 使用http代理：
-x [PROTOCOL://]HOST[:PORT]
curl  -x http://192.168.11.6:8123  -L <url/filename1>  -o </path/filename2>

# git 使用代理
git config --global http.proxy 127.0.0.1:8123
git clone  https://github.com/xxx/xxx.git
git config --global --unset-all http.proxy





# 查看当前互联网ip及城市
curl ip.gs
curl ip.sb



