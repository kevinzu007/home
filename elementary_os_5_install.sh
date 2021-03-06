#bash

# elementary_install:
# ------------------------
# add-apt-repository: command not found
sudo apt install -y  software-properties-common  apt-transport-https  ca-certificates

sudo apt install -y  python3-dev python3-pip
#pip3 install --upgrade pip

sudo apt install -y  ntpdate  vim  git git-lfs snapd openssh-server
sudo apt install -y  tmux  tmate

# x11vncserver
sudo apt install -y  x11vnc tigervnc-viewer

#win+ubuntu:
# 设置时钟为本地时间
sudo timedatectl set-local-rtc 1
sudo ntpdate  cn.ntp.org.cn



sudo apt install -y  wireshark

# brook 梯子
wget  https://github.com/txthinking/brook/releases/download/v20190601/brook  -P /usr/local/bin/
chmod +x /usr/local/bin/brook
# 客户端连接-socks5
# nohup  brook client -l 0.0.0.0:1080 -i 0.0.0.0 -s server:port -p password  > /dev/null 2>&1  &

### ss-l
#sudo apt install -y  shadowsocks-libev rng-tools
## sudo  vim /etc/shadowsocks-libev/hk.json
#sudo  systemctl stop    shadowsocks-libev.service
#sudo  systemctl disable shadowsocks-libev.service
#sudo  systemctl enable  shadowsocks-libev-local@hk.service
#sudo  systemctl start   shadowsocks-libev-local@hk.service

# privoxy --- socks5 to http proxy : 8118
sudo apt install -y  privoxy
# sudo vim /etc/privoxy/config
#listen-address  0.0.0.0:8118
#forward-socks5    /                127.0.0.1:1080  .
#forward           .zjlh.lan        .
#forward           192.168.*.*/     .
#forward           127.*.*.*/       .
#forward           localhost/       .
sudo  systemctl start  privoxy.service

# proxychains
sudo apt install -y  proxychains4
# sudo  vim /etc/proxychains4.conf
# socks5  127.0.0.1      1080
proxychains4 curl  ip.sb    # test


# chrome
[ ! -f /etc/apt/sources.list.d/google-chrome.list ] && sudo wget http://www.linuxidc.com/files/repo/google-chrome.list -P /etc/apt/sources.list.d/
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
sudo apt update
sudo apt install -y  google-chrome-stable





# 好玩
# 名言fortune
sudo apt install -y  fortune-mod  fortune-zh
#fortune
# 用ASCII字符打印牛，羊等动物
sudo apt install -y  cowsay
#cowsay "ffffff"
#cowsay -l 查看其它动物的名字，然后 -f 跟上动物名，如
#cowsay -f tux "坑爹啊"
#fortune | cowsay
# 艺术字生成器，由ASCII字符组成
sudo apt install -y  figlet toilet
#figlet fffff
#toilet fffffff
#toilet -F gay ffffff
#toilet -F gay -f mono12 fffffff
# ASCII艺术框
sudo apt install -y  boxes lolcat
#fortune | boxes -d cat
#fortune | boxes -d cat | lolcat    #--- 上色
# 文字上色
#echo wwwwwwwwwwwwwwwww | lolcat
# 桌面上出现一直喵星人，跟着你的鼠标跑
sudo apt install -y  oneko
#oneko &
# cal打印日历
#cal
#cal 8 2019


# scrot命令行截图
sudo apt install -y  scrot        #--- 命令行截图工具
# scrot -s -e 'echo "截图文件：$f";  echo "截图大小: $w x $h";


# 二维码
# 文本转化为二维码图片或二维码字符
sudo apt install -y  qrencode     #--- 编码二维码
#echo "wowowwooowwowowo" | qrencode -o a.png           #--- 默认输出png图片二维码
#echo "wowowwooowwowowo" | qrencode -t utf8            #--- 灰白
#echo "wowowwooowwowowo" | qrencode -t utf8 | lolcat   #--- 上个色
#echo "wowowwooowwowowo" | qrencode -t ANSIUTF8        #--- 纯白
#echo "wowowwooowwowowo" | qrencode -t ASCIIi          #--- "#"字符格式二维码
#qrencode -t utf8  < /path/file.txt                    #--- 从文件导入

# 二维码图片转化为文本
sudo apt install -y  zbar-tools   #--- 解码二维码
#zbarimg  a.png                   #--- 图片二维码文件转换为文本
#scrot -s -e 'echo "截图文件：$f";  echo "截图大小: $w x $h";  zbarimg "$f";  rm -f "$f"'     #--- 鼠标截图二维码转换为文本



sudo apt install -y  nfs-kernel-server
sudo apt install -y  smbclient cifs-utils
sudo apt install -y  libpam-google-authenticator    #--- google身份验证器

sudo apt install -y  ntfs-3g
sudo apt install -y  exfat-fuse
sudo apt install -y  sshfs

sudo apt install -y  unzip
sudo apt install -y  p7zip  p7zip-rar
sudo apt install -y  rar  unrar

sudo apt install -y  httpie     #--- http GET POST，可替代curl、wget
sudo apt install -y  axel       #--- 多路http下载加速
sudo apt install -y  lftp
sudo apt install -y  rtorrent   #--- 命令行torrent客户端
sudo apt install -y  aria2      #--- 磁力、BT下载、url下载
sudo apt install -y  amule      #--- ed2k电驴下载
wget https://dl.motrix.app/release/Motrix-1.4.1-x86_64.AppImage  #--- 迅雷、磁力、BT下载
sudo apt install -y  uget       #--- 磁力、BT下载
#sudo apt install -y  deluge     #--- 磁力、BT下载

sudo apt install -y  bmon
sudo apt install -y  iftop
sudo apt install -y  ifstat
sudo apt install -y  sysstat
sudo apt install -y  dstat
sudo apt install -y  virt-manager

sudo apt install -y  tcpdump
sudo apt install -y  nmap zenmap


# font
sudo apt install -y  fonts-wqy-*
sudo apt install -y  xfonts-wqy
[ ! -d ~/.fonts ] && mkdir  ~/.fonts


sudo apt install -y  shellcheck   #shell语法检查
sudo apt install -y  meld     #文件比较
sudo apt install -y  catfish
sudo apt install -y  tree
sudo apt install -y  lnav
sudo apt install -y  remmina remmina-plugin-rdp  remmina-plugin-vnc
sudo apt install -y  gparted gpart
sudo apt install -y  mysql-workbench
sudo apt install -y  sqlitebrowser
sudo apt install -y  redis-tools
sudo apt install -y  apache2-utils
sudo apt install -y  whois     # mkpasswd
sudo apt install -y  jq     #json格式化



#sudo apt install -y  tlp   #电源管理
#sudo apt install -y  libreoffice  libreoffice-l10n-zh-cn
sudo apt install -y  inkscape
#sudo apt install -y  dia
# 这个比dia好很多：https://www.diagrams.net/   https://github.com/jgraph/drawio-desktop/releases
wget https://github.com/jgraph/drawio-desktop/releases/download/v13.6.2/draw.io-amd64-13.6.2.deb
sudo apt install -y  gimp
sudo apt install -y  gthumb    #看图工具
sudo apt install -y  planner
sudo apt install -y  filezilla
#sudo apt install -y  fcitx  fcitx-googlepinyin
sudo apt install -y  moc  moc-ffmpeg-plugin
sudo apt install -y  chromium-browser
sudo apt install -y  firefox  #firefox-locale-zh-hans
sudo apt install -y  steam
sudo apt install -y  pwgen
#sudo apt install -y  pass qtpass         #密码管理工具
sudo apt install -y sox libsox-fmt-all   #命令行音乐播放器
sudo apt install -y audacious    #音乐播放器，支持音乐信息中的gbk中文（设置自动检测中文，os需安装gbk支持）
sudo apt install -y mencoder     #可以提取视频中的音频，含mplayer命令行播放器
sudo apt install -y qalculate    #超强计算器gui+cli
sudo apt install -y com.github.parnold-x.nasc  #NaSC

# 博客工具
sudo apt install -y ruby ruby-dev make gcc g++
sudo gem install bundler
sudo gem install jekyll

# 清理dns缓存
sudo apt install -y nscd
sudo systemctl restart nscd.service

# Convert FLAC to MP3
# https://github.com/FredBezies/flac2mp3-bash
# https://wiki.archlinux.org/index.php/Convert_FLAC_to_MP3#With_FFmpeg
# https://blog.csdn.net/jiaobei2354717/article/details/80619381

# 音频转换插件flac,lame：
sudo apt install -y flac lame    #音频格式转换 https://blog.csdn.net/jiaobei2354717/article/details/80619381

# 音频转换插件mac：
# https://unix.stackexchange.com/questions/165485/why-can-i-not-split-a-ape-file
sudo add-apt-repository -y ppa:flacon
sudo apt update
sudo apt install -y flacon


# 大小写指示器
sudo add-apt-repository -y -u  ppa:tsbarnes/indicator-keylock
sudo apt install -y  indicator-keylock
sleep 5


# ansible
sudo apt-add-repository -y -u  ppa:ansible/ansible
sudo apt install -y  ansible
sleep 5


# l2tp client
#sudo add-apt-repository -y -u  ppa:nm-l2tp/network-manager-l2tp
#sudo apt-get update
#sudo apt-get install network-manager-l2tp-gnome


# gitbook
# https://github.com/GitbookIO/gitbook/blob/master/docs/setup.md
#npm install gitbook-cli -g


# 图床picgo图形版(一般用它就好)
# https://github.com/Molunerfinn/PicGo/releases
# https://www.bilibili.com/read/cv10288009/
# 配置文件路径：~/.config/picgo/data.json


# 图床picgo命令行
# https://github.com/PicGo/PicGo-Core
# 插件：https://github.com/PicGo/Awesome-PicGo
# 配置文件路径：~/.picgo/config.json
npm install picgo -g
picgo install  picgo-plugin-gitee-uploader  #---需在当前用户下安装
picgo  install  picgo-plugin-autocopy       #---自动拷贝链接
# 啥用：
picgo set  [uploader|transformer|plugin]
picgo set  uploader   #---配置图床
picgo use             #---选择默认使用哪个图床及插件
picgo [upload|u]  图片.jpg    #---上传指定图片

# 图床picgo关联Typora
# https://www.yht7.com/news/114454


# tweaks配置工具
sudo add-apt-repository -y -u  ppa:philip.scott/elementary-tweaks
sudo apt install -y  elementary-tweaks
sleep 5


# virtualbox
[ ! -f /etc/apt/sources.list.d/virtualbox.list ] && echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian bionic contrib" | sudo tee  /etc/apt/sources.list.d/virtualbox.list
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt update
sudo apt install -y  virtualbox-6.0
sleep 5



# asciinema终端录屏
sudo apt install -y  asciinema
## 用法：
## 录制到文件：asciinema rec <TO_filename.cast>
## 录制到官网：asciinema play
## 播放本地文件：asciinema play  <TO_filename.cast>


# # resilio-sync ---  被墙 --- 香港也不行
# # https://help.resilio.com/hc/en-us/articles/206178924-Installing-Sync-package-on-Linux
# echo "deb http://linux-packages.resilio.com/resilio-sync/deb resilio-sync non-free" | sudo tee /etc/apt/sources.list.d/resilio-sync.list
# curl  https://linux-packages.resilio.com/resilio-sync/key.asc  \
#     --socks5 192.168.11.10:1080  \
#     | sudo apt-key add -
# proxychains4  sudo apt-get update
# proxychains4  sudo apt-get install resilio-sync
# # Enable sync service as current user:
# sudo sed -i 's/WantedBy=multi-user.target/WantedBy=default.target/g' /usr/lib/systemd/user/resilio-sync.service
# systemctl --user enable resilio-sync
# systemctl --user start resilio-sync
# # http://127.0.0.1:8888


# 命令自动修正thefuck（fuck）
sudo apt install -y  thefuck


# pg client & pgadmin
# https://www.postgresql.org/download/linux/ubuntu/
[ ! -f /etc/apt/sources.list.d/pgdg.list ] && echo "deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list    #--- bionic是ubuntu18.04的版本号，自行替换
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt update
sudo apt install -y  pgadmin4 postgresql-client    #--- 不加版本号，代表最新版，下同
sleep 5


# pgcli --- 自动命令提示
# http://www.postgres.cn/news/viewone/1/313
sudo pip3 install pgcli


# docker-ce
# https://docs.docker.com/install/linux/docker-ce/ubuntu/#set-up-the-repository
sudo apt install -y  apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
[ ! -f /etc/apt/sources.list.d/docker-ce.list ] && echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" | sudo tee /etc/apt/sources.list.d/docker-ce.list  #--- bionic是ubuntu18.04的版本代号
sudo apt update
sudo apt install -y  docker-ce
sleep 5
sudo usermod -aG docker $USER
newgrp docker


# handbrake视频转码，含ong播放器n用dvd解码包，替代w32ocdes
sudo add-apt-repository -y -u  ppa:stebbins/handbrake-releases
sudo apt install -y  handbrake-gtk  handbrake-cli
sleep 5




# wiznote
sudo apt install -y  openssl1.0 libssl1.0-dev
wget https://url.wiz.cn/u/Wizlinux
chmod +x Wizlinux


# keepass2
sudo apt-add-repository -y -u  ppa:jtaylor/keepass
sudo apt install -y  keepass2
sleep 5
# 插件keepasshttp
sudo apt install -y  mono-complete
sudo  wget  -P /usr/lib/keepass2/Plugins/  https://raw.github.com/pfn/keepasshttp/master/KeePassHttp.plgx
# 中文语言包解决不了菜单栏乱码问题，可能没有菜单栏用的字体
# 在添加记录的时候，填中文会乱码，解决方法：
# 打开Keepass ----> Tools -> Options -> Interface -> 按钮"Select List Font" --> 选在可以中文的字体；-->把列表中Force using system font (Unix only)的钩钩去掉。
# 用法：http://devzc.com/post/465


# telegram
# http://blog.topspeedsnail.com/archives/5116
sudo add-apt-repository  -y -u  ppa:atareao/telegram
sudo apt install -y  telegram
sleep 5




# -----------------------
# deb

# jiangguoyun
wget -P ~/Downloads/ https://www.jianguoyun.com/static/exe/installer/ubuntu/nautilus_nutstore_amd64.deb
sudo dpkg -i ~/Downloads/nautilus_nutstore_amd64.deb
sudo apt install -f -y


# remarkable - markdown
wget https://remarkableapp.github.io/files/remarkable_1.87_all.deb -P ~/Downloads/
sudo dpkg -i ~/Downloads/remarkable_1.87_all.deb
sudo apt install -f -y


# haroopad - markdown
curl  https://bitbucket.org/rhiokim/haroopad-download/downloads/haroopad-v0.13.1-x64.deb  \
    -L  -o ~/Downloads/haroopad-v0.13.1-x64.deb  \
    --socks5 127.0.0.1:1080
sudo dpkg -i  ~/Downloads/haroopad-v0.13.1-x64.deb
# 使用中，如果不能打开，请删除tmp文件
#rm  ~/.config/Haroopad/.tmp/*


# zoom
wget  https://www.zoom.us/client/latest/zoom_amd64.deb  -P ~/Downloads/
sudo dpkg -i ~/Downloads/zoom_amd64.deb
sudo apt install -f -y


# Rocket.Chat client
# https://github.com/RocketChat/Rocket.Chat.Electron/releases
curl  https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/2.15.3/rocketchat_2.15.3_amd64.deb  \
     -L  -o ~/Downloads/rocketchat_amd64.deb  \
     --socks5 127.0.0.1:1080
sudo  dpkg -i  ~/Downloads/rocketchat_amd64.deb


# deepin截图
sudo apt install -y  deepin-screenshot
# run "/usr/bin/deepin-screenshot  > /dev/null 2>&1"
# 添加系统快捷键，例如：Ctrl-Alt-A


# file converto pdf...
sudo apt install -y  pandoc


# teamviewer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb  -P ~/Downloads/
sudo dpkg -i ~/Downloads/teamviewer_amd64.deb
sudo apt install -f -y

# ossfs
#  https://help.aliyun.com/document_detail/32196.html?spm=a2c4g.11174283.3.8.2b0e7da2sFT3oF
curl  -L -o ~/Downloads/ossfs_1.80.6_ubuntu18.04_amd64.deb  http://gosspublic.alicdn.com/ossfs/ossfs_1.80.6_ubuntu18.04_amd64.deb?spm=a2c4g.11186623.2.13.650773580rmnoR&file=ossfs_1.80.6_ubuntu18.04_amd64.deb
sudo  dpkg -i ~/Downloads/ossfs_1.80.6_ubuntu18.04_amd64.deb
sudo  apt install -f -y

# ossutil
# https://www.alibabacloud.com/help/zh/doc-detail/50559.htm?spm=a2c63.p38356.b99.170.77c6434cSLbGLP
sudo wget http://gosspublic.alicdn.com/ossutil/1.6.7/ossutil64 -P /usr/local/bin/
sudo chmod +x /usr/local/bin/ossutil64
#ossutil64 config



# 手动下载

# smartGit
# https://www.syntevo.net/smartgit/download/
# 运行选择第三项 非商业 使用

# gitkragen
# https://www.gitkraken.com/download
# 使用方法：https://www.cnblogs.com/thousfeet/p/7840932.html

# Beyond Compare
# http://www.scootersoftware.com/download.php
# 无限试用，删除下面这个文件：
# rm -rf ~/.config/bcompare/registry.dat

# navicat
# https://www.navicat.com.cn/download/navicat-premium
# 无限试用，删除system.reg

# jetbrains系列软件
# 破解输入这个：http://xidea.online
# 自建破解服务器
# http://idea.lanyus.com/
#     # docker run -d -p 8888:8888 ilanyu/golang-reverseproxy
#     输入激活服务器地址：http://ip:8888
# IntelliJ IDEA
# https://www.jetbrains.com/idea/download/#section=linux
# DataGrip
# https://www.jetbrains.com/datagrip/download/#section=linux
# WebStorm
# https://www.jetbrains.com/webstorm/


# sougoupinyin
# https://pinyin.sogou.com/linux/?r=pinyin
curl -L -o ~/Downloads/sogoupinyin_2.2.0.0108_amd64.deb  http://cdn2.ime.sogou.com/dl/index/1524572264/sogoupinyin_2.2.0.0108_amd64.deb?st=w9MGCFqBUJc1dgVYPlcEvg&e=1560845968&fn=sogoupinyin_2.2.0.0108_amd64.deb
sudo apt install -y fcitx
sudo dpkg -i ~/Downloads/sogoupinyin_2.2.0.0108_amd64.deb
sudo apt install -f -y


# dict
sudo apt install -y  goldendict
#离线词典http://download.huzheng.org/zh_CN/
mkdir -p ~/.dict
wget -P ~/Downloads/  http://download.huzheng.org/zh_CN/stardict-langdao-ec-gb-2.4.2.tar.bz2
wget -P ~/Downloads/  http://download.huzheng.org/zh_CN/stardict-langdao-ce-gb-2.4.2.tar.bz2
tar  jxf ~/Downloads/stardict-langdao-ec-gb-2.4.2.tar.bz2  -C ~/.dict/
tar  jxf ~/Downloads/stardict-langdao-ce-gb-2.4.2.tar.bz2  -C ~/.dict/


# neteasteMusic
wget -P ~/Downloads/  http://d1.music.126.net/dmusic/netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb
sudo dpkg -i ~/Downloads/netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb
sudo apt install -f -y


# ------------------------
# install bin to OPT
[ ! -d ~/.opt ] && mkdir  ~/.opt

# xMind
#wget  http://xiazai.xmindchina.cn/trail/xmind-8-linux.zip  -O ~/Downloads/xmind-8-linux.zip
#unzip ~/Downloads/xmind-8-linux.zip  -d ~/.opt/xmind/
#sudo  ~/.opt/xmind/setup.sh
curl -L -o ~/Downloads/XMind-ZEN-for-Linux-64bit.deb  https://www.xmind.cn/xmind/downloads/XMind-ZEN-for-Linux-64bit.deb
sudo dpkg -i ~/Downloads/XMind-ZEN-for-Linux-64bit.deb


# wechat
wget -P ~/Downloads/  https://github.com/kooritea/electronic-wechat/releases/download/v2.3.1/electronic-wechat-linux-x64-2.3.1.zip
unzip  ~/Downloads/electronic-wechat-linux-x64-2.3.1.zip -d ~/.opt/
# 修改程序路径，然后拷贝
#vim  ~/.opt/electronic-wechat-linux-x64/electronic-wechat.desktop
cp ~/.opt/electronic-wechat-linux-x64/electronic-wechat.desktop   ~/.local/share/applications/

# marp(markdown to ppt pdf ...)
# https://marp.app/
./.opt/marp -p 深蓝保学习-今日之星-问答.ppt.md


# ------------------------
# source install

# OSD Lyrics歌词外挂
# 安装在应用程序中
sudo apt install -y intltool libappindicator-dev  libdbus-glib-1-dev libnotify-dev
cd /usr/local/src/
sudo git clone  https://github.com/osdlyrics/osdlyrics.git
cd osdlyrics/
sudo ./autogen.sh
sudo ./configure --enable-appindicator=yes
sudo make
sudo make install

pip install future
pip install pycurl
sudo apt install lsbcanberra-gtk-module



# ------------------------
# elementary OS store




# bin.tar
zsh  oh-my-zsh
autojump



# # 使用代理服务器样例:
#
#
# # apt 使用http/https代理：
# export http_proxy='http://192.168.11.10:8118'
# export https_proxy='https://192.168.11.10:8118'
# apt update
#
#
# # git 使用代理
# # 设置代理
# git config --global  http.proxy  192.168.11.10:8118
# git config --global  https.proxy 192.168.11.10:8118
# 或
# git config --global  http.proxy  socks5://127.0.0.1:1080
# git config --global  https.proxy socks5://127.0.0.1:1080
# # 取消代理
# git config --global --unset http.proxy
# git config --global --unset https.proxy
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
# # -O ： 目标文件名
# # --no-check-certificate ： 不检查证书
# # wget自动跟随链接重定向
# wget  https://bitbucket.org/rhiokim/haroopad-download/downloads/haroopad-v0.13.1-x64.deb  \
#     -P ~/Downloads/  \
#     -e use_proxy=yes  -e https_proxy=192.168.11.10:8118  -e http_proxy=192.168.11.10:8118  \
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
#     -o ~/Downloads/haroopad-v0.13.1-x64.deb  \
#     -L  \
#     -k  \
#     -x http://192.168.11.10:8118
#
# # socks5代理:
# curl  https://bitbucket.org/rhiokim/haroopad-download/downloads/haroopad-v0.13.1-x64.deb  \
#     -o ~/Downloads/haroopad-v0.13.1-x64.deb  \
#     -L  \
#     -k  \
#     --socks5 192.168.11.10:1080
#
#
# # pip使用代理：
# pip3 install lll  --proxy 192.168.11.10:8118
# pip3 install -r odoo/requirements.txt --proxy 192.168.11.10:8118



# Linux curl命令详解
# https://www.cnblogs.com/duhuo/p/5695256.html
# 保存cookie信息
curl -c cookie-c.txt  http://www.linux.com
# 保存header信息
curl -D cookie-d.txt http://www.linux.com
# 用cookie信息访问网站
curl -b cookie-c.txt http://www.linux.com
# 模仿浏览器访问
curl -A "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.0)" http://www.linux.com
# 伪造referer（盗链）---  服务器其以为你是从www.linux.com点击某个链接过来的
curl -e "www.linux.com" http://mail.linux.com
# 显示下载进度条
curl -# -O http://www.linux.com/dodo1.JPG

# aria2c
# 参考：https://blog.csdn.net/hjwang1/article/details/44408633
# https://binux.blog/2012/12/aria2-examples/
# 说明：想要停止下载，可以按Ctrl-C。想要恢复下载，可以在同一个文件夹中执行相同的下载命令。只要URI指向同一个文件，URIs是可以被改变的。
## 同时下载文件中的5个url
aria2c -j 5  -i files.txt
## 使用两个连接下载这个文件
aria2c -x 2  http://host/image.iso
## 用两个连接下载同一个文件
aria2c http://host1/file.zip ftp://host2/file.zip
## 查看并选择性下载bt种子中的文件：
aria2c -S file.torrent
aria2c --select-file=1-4,6 -T file.torrent
## 同时进行多个 bt 的下载:
aria2c /path/to/file1.torrent  http://site/file2.torrent
## 下载完成后，执行一条命令：
aria2c --on-download-complete=COMMAND http://example.org/file.iso
## 使用代理服务器
aria2c --all-proxy='http://proxy:8080' http://host/file
aria2c --https-proxy='https://username:password@proxy:8080' http://host/file
## 启动server，默认监听6800，需要webui-aria2等界面进行管理
aria2c --enable-rpc --rpc-listen-all
aria2c --enable-rpc --rpc-listen-all  --rpc-secret 'passwordddddddddddddddddd'
## webui-aria2等界面
docker run --rm -p 8002:80 timonier/webui-aria2:latest
docker run -d -p 8002:80 timonier/webui-aria2:latest


# 拷贝文件
rsync -av ../pg --exclude=.git root@47.52.22.138:~/
cp  `ls | grep -v zhidao.txt | xargs`  /test2

# 不能拷贝软连接（会转化成文件或目录）
ansible nginx_real -m copy -a "src=./dist/  dest=${WEBSITE_BASE}/${PJ}/releases/$(date +%Y%m%d)/ backup=no"
# 可以拷贝软连接，还会自动创建父目录
ansible nginx_real -m synchronize -a "src=./dist/  dest=${WEBSITE_BASE}/${PJ}/releases/$(date +%Y%m%d)/  rsync_opts=--perms=yes,--times=yes"


# kvm 远程克隆
virt-clone  --auto-clone  --connect qemu+ssh://root@192.168.11.202/system  -o v-192-168-11-25-pg  -n pg-t


# 查看当前互联网ip及城市
curl ip.gs
curl ip.sb

# ip地理位置，免费查
curl -s "https://api.ip.sb/geoip/18.8.128.8"
# ip地址位置，每天免费查100次（聚合公司）
curl -s "http://apis.juhe.cn/ip/ip2addr?ip=18.8.128.8&dtype=json&key=e5ad6f81997d4f101cc3d17409e18d96"

# json格式化：
echo 'jason字符串' | jq  .<key1>.<key2>
# json 之 jq使用大法：
# https://lzone.de/cheat-sheet/jq
# jq手册（开发版）:
# https://stedolan.github.io/jq/manual/
# 使用jq的|=运算符来动态更新密钥
TLS_KEY=$(base64 < "./tls.key" | tr -d '\n')
TLS_CRT=$(base64 < "./tls.crt" | tr -d '\n')
kubectl get secrets tls-rancher-ingress -o json \
        | jq '.data["tls.key"] |= "$TLS_KEY"' \
        | jq '.data["tls.crt"] |= "$TLS_CRT"' \
        | kubectl apply -f -
aliyun ecs DescribeRegions | jq '.Regions.Region[] | select(.LocalName == "华南3（广州）") | {RegionId}'
aliyun ecs DescribeRegions | jq '.Regions.Region[] | select(.LocalName | contains("广州")) | {RegionId}'


# # 图标与菜单快捷方式
# /usr/share/icons
# 系统图标文件夹
# ~/.local/share/icons
# 用户图标文件夹
# /usr/share/applications
# 系统菜单文件夹
# ~/.local/share/applications
# 用户菜单文件夹



# mutt
sudo apt install -y  mutt
sudo apt autoremove  postfix
sudo apt install -y  w3m feh abook


# ewomail
# http://ewomail.com/list-11.html

# 快速部署
# bitnami

# SonarQube
# http://blog.csdn.net/kefengwang/article/details/54377055
# https://www.cnblogs.com/ceshi2016/p/6529453.html
# https://docs.sonarqube.org/display/PLUG/Plugin+Library

# 2018 最好的自动化测试工具
# Selenium/Appium | Katalon Studio
# https://blog.csdn.net/xuecancan/article/details/79529155
# https://blog.csdn.net/huyanyan08/article/details/78753637
# 浏览器插件：Katalon Recorder
# https://www.katalon.com/resources-center/blog/katalon-automation-recorder/#
# https://www.seleniumhq.org/
# ./katalon -runMode=console -email kevinzu007@gmail.com -password=1qaz2wsx <projectPath>
# https://docs.katalon.com/display/KD/Console+Mode+Execution
# https://docs.katalon.com/display/KD/Tutorials
# https://www.jianshu.com/p/e52abbd6aee7?from=groupmessage


# p4merge
# http://www.cnblogs.com/memory4young/p/installing-and-configuring-p4merge-for-git-on-ubuntu.html
wget http://cdist2.perforce.com/perforce/r17.3/bin.linux26x86_64/p4v.tgz -P ~/Downloads/
tar zxf  Downloads/p4v.tgz  -C ./.opt/
sudo ln -s  ~/.opt/p4v-2017.3.1601999/bin/p4merge  /usr/local/bin/p4merge

vim ~/.gitconfig
--------------------
[merge]
        keepBackup = false
        tool = p4merge
[mergetool]
        prompt = false
[mergetool "p4merge"]
        cmd = p4merge "$BASE" "$LOCAL" "$REMOTE" "$MERGED"
        keepTemporaries = false
        trustExitCode = false
        keepBackup = false
[diff]
        tool = p4merge
[difftool]
        prompt = false
[difftool "p4merge"]
        cmd = p4merge "$LOCAL" "$REMOTE"
        keepTemporaries = false
        trustExitCode = false
        keepBackup = false
-------------------
也可以用系统自带工具：
git config --global diff.tool vimdiff
git config --global difftool.prompt false
---
[diff]
   tool = vimdiff
[difftool]
   prompt = false
---



# vps性能速度测试
# https://wzfou.com/vps-ceping-gongju/


# vim正则替换，例如下：将每行的文字"anyabc"替换为"anyabc,anyabc"
%s/\(.*$\)/\1,\1/gc
%s/\(.\+$\)/\1,\1/gc

# 分支信息都显示出来：
即
git log --graph --all --decorate
或者
git log --graph --all --decorate=short


# SHA1
# 基于这个提交创建一个分支，并切换过去
git checkout  -b rollback_180606  023465cc76018a6dbd1a10f6d4b31654be3c1c3f

# 切换到这个commit
git checkout  023465cc76018a6dbd1a10f6d4b31654be3c1c3f


# apt update 错误：N: 无法安全地用该源进行更新，所以默认禁用该源。
# 改用 apt-get udpate 好像可以哦


# remi输入法（基于ibus）
sudo apt install -y  ibus-rime
ibus-setup    #--- 添加rime输入法
ibus-daemon -drx    #--- (重新)启动ibus服务，ok
# 设置自启动/usr/bin/ibus-daemon -drx ; 按 Ctrl + ` 选择只使用简体汉字
# 词库，不知道能不能用：https://code.google.com/archive/p/hslinuxextra/downloads


# 禁用快捷键
# 按 '删除键' 即可


# 高级配置工具
sudo apt install -y  dconf-tools

# 好用的编程字体：YaHei Consolas Hybrid
wget -qO- https://raw.githubusercontent.com/yakumioto/YaHei-Consolas-Hybrid-1.12/master/install.sh | sudo sh


# 解决Linux下解压zip包后的文件名乱码问题
# unzip -O cp936 xxx.zip

# 非空目录初始化并关联远程仓库的方法
git init
git add .
git commit -m "new"
git remote add origin git@g.zjlh.lan:zhuhongfeng/frp.git
# 在gitlab服务器上建立frp仓库，然后：
git push --set-upstream origin master




# git checkout 大法：
git checkout   #--- 检查当前分支
git checkout <branch> | <commitID> | <tag>  #--- 切换到分支 | 切换到某次提交 | 切换到某tag
git checkout -b <新branch> [ <branch> | <commitID> | <tag>]  #--- 基于 某分支/提交/tag 建立新分支，并切换过去

git revert <commitID>   #--- 回滚到<commitID>，包含<commitID>的代码也会被回滚掉
git revert <commitID> <-m 1|2 >  #--- 如果<commitID>是merge commit，则需要加上-m参数，用来指定谁作为父，当前分支为1，回滚的<commitID>为2

Git diff branch1 branch2 --stat   //显示出所有有差异的文件列表
Git diff branch1 branch2 文件名(带路径)   //显示指定文件的详细差异
Git diff branch1 branch2                   //显示出所有有差异的文件的详细差异


# git回滚
# 未使用 git add 缓存代码时。
git checkout .
git checkout -- filepathname
# 已经使用了  git add 缓存了代码。
git reset HEAD .
git reset HEAD filepathname
# 已经用 git commit  提交了代码。
git reset --hard HEAD^        回退到上一次commit的状态
git reset --hard  commitid    回退到任意版本




# transmission
#https://launchpad.net/ubuntu/+source/transmission/2.94-1ubuntu1
# http://blog.sina.com.cn/s/blog_406127500101a9c0.html
# https://www.linuxidc.com/Linux/2009-01/18048.htm
# https://blog.csdn.net/jiyuanyi1992/article/details/44250943
sudo apt install libcurl4-openssl-dev  libevent-dev  zlib1g-dev  libssl-dev  intltool
./configure  --enable-cli  #--- --with-gtk
make
sudo make install
运行：/usr/local/bin/transmission-daemon
浏览器：http://127.0.0.1:9091


# echo输出颜色、printf输出颜色
# https://www.cnblogs.com/feige1314/p/6908600.html
printf  "\033[33;1mxxxxxx\033[0m"


# 条件判断
# https://blog.csdn.net/jasonzeng/article/details/53286384
[  ]  ：表示条件测试。
[[  ]]：表示高级字符串处理函数
    双方括号中判断命令使用标准的字符串比较，还可以使用匹配模式，从而定义与字符串相匹配的正则表达式。
((  ))：表示数学表达式
    在判断命令中只允许在比较中进行简单的算术操作，而双圆括号提供更多的数学符号，而且在双圆括号里面的'>','<'号不需要转意。

# -E与无-E的区别
# http://vansteve911.github.io/2015/11/12/bash-grep-defects/
# 正则类型：
# BREs：grep、sed
# EREs：'grep -E'、egrep、awk、'sed -r'
#
# 匹配以a开头以g结尾的字符串
#echo "abcdefg" | grep 'a.+g' #不能正确匹配
#echo "abcdefg" | grep 'a.\+g' #可以匹配（使用转义）
#echo "abcdefg" | grep -E 'a.+g' #使用扩展正则表达式，可以匹配

# 仅显示 非 “#”、“空行”、“空格” 开头的行
cat t.txt | grep '^[^#$ ]'

# 邮件地址正则匹配
EMAIL_REGULAR='^[a-zA-Z0-9]+[a-zA-Z0-9_\.]*@([a-zA-Z0-9]+[a-zA-Z0-9\-]*[a-zA-Z0-9]\.)*[a-z]+$'
[[ "${MY_EMAIL}" =~ ${EMAIL_REGULAR} ]] && echo '匹配'     #这里匹配规则不能加引号

# sort高级排序
sort -t $'\t' -k 1n,1 -k 2n,2 -k4rn,4 -k3,3 <my-file>
# 解释如下：
# -t $'\t'：指定TAB为分隔符
# -k 1, 1: 按照第一列的值进行排序，如果只有第一个1的话，相当于告诉sort从第一列开始直接到行尾排列
# n:代表是数字顺序，默认情况下市字典序，如10<2
# r: reverse 逆序排列，默认情况下市正序排列
# 获取登录者ip
#w | sed -n '3,$p' | awk '{print $3,$4,$5}' | grep "`date +%H:%M`" | grep 's$' | sort -t " " -k 3,3 | head -n 1 | awk '{print $1,$2}'



# 查找[]cmd]所在的包
yum provides [cmd]


# 所有支持的语言编码
cat /usr/share/i18n/SUPPORTED
# 查看已启用的编码
locale -a
# 添加新支持编码，并使编码生效
sudo vim /var/lib/locales/supported.d/local
  zh_CN.GB18030 GB18030
  zh_CN.GBK GBK
  zh_CN GB2312
locale-gen


# 音乐文件信息中文显示乱码解决办法
# sudo apt-get install python-mutagen
# mid3iconv -e GBK *.mp3    #修正


# htpasswd
# echo 123456 | htpasswd -i -c ./pass.db adm
# printf "adm:$(openssl passwd -crypt 12345678)" > ./pass.db
# 内部其实用的是openssl crypt方法加密，openssl passwd --help
# 密码最长8位，超出部分无效
# 密码相同值不同，因为会自动随机加盐（salt），也可以指定盐，在加密结果中前两位就是所加的盐（salt），位数如果超过两位则只有前两位有效
$ openssl passwd -crypt -salt 12 12345678
12yJ.Of/NQ.Pk
$ openssl passwd -crypt -salt 123 12345678
12yJ.Of/NQ.Pk
$ openssl passwd -crypt -salt 12 1234567890
Warning: truncating password to 8 characters
12yJ.Of/NQ.Pk




# oracle备份
create directory backup_dir  as '/u01/backup/nc65';
#select * from dba_directories;
DbUserName=nc65
DbPassword=rmIBoJ628nP1bzw1OXnW
DbSchemas=nc65
ExpdpOption=
OracleDirectoryName=backup_dir
DbBackupToFileName=nc65-expdp
expdp ${DbUserName}/${DbPassword} schemas=${DbSchemas} ${ExpdpOption} directory=${OracleDirectoryName} dumpfile=${DbBackupToFileName}.dmp logfile=${DbBackupToFileName}.log


# Oracle查看用户密码过期，修改永不过期:
01、查看当前open用户#
select username,account_status,expiry_date,profile from dba_users;
02、查看目前的密码过期策略#
select * from dba_profiles s where s.profile='DEFAULT' and resource_name='PASSWORD_LIFE_TIME';
03、修改密码过期策略#
alter profile default limit password_life_time unlimited;
04、过期的账户，重置密码后期不会再过期#
$sqlplus / as sysdba
alter user smsc identified by <原来的密码>     #---不用换新密码



docker-compose.yml:
# https://blog.csdn.net/kikajack/article/details/79751026
env_file    ：可以给docker-compose.yml中的变量用，也可以给容器中的环境变量用，默认文件为./.env，如果使用默认文件，则可以不在docker-compose.yml中明确指定。docker-compose.yml中的变量也可以来自shell的export环境变量，如果shell与.env中的值不一样，则shell中的值优先于.env文件中指定的值。docker-compose config可以显示结果
environment ：仅给容器中的环境变量用，不能用于docker-compose.yml中的变量。使用environment关键字时，如果不赋值，则会将shell中的环境变量传递给容器
args        ：是给Dockerfile中的变量的，用于制作镜像，即Dockerfile中的AVG
变量优先级顺序：environment --> env_file --> Dockerfile(ARG/ENV)
查看docker-compose.yml最终环境变量：docker-compose config

Dockerfile:
ARG  ：可以设置变量默认值，也可以从docker build参数--build-arg中获取，会覆盖默认值。仅在build时有效，即仅用于生成image
ENV  ：镜像或容器用的变量，在容器运行时os的env变量，可以设置默认值，也可以在run时添加-e参数获取



# CMD三种形式：
CMD ["executable","param1","param2"] (exec形式。会解析为JSON数组，这意味着您必须使用双引号（""）来围绕单词而不是单引号（''）)
CMD command param1 param2 (shell形式)
CMD ["param1","param2"] (ENTRYPOINT参数形式)
例：
CMD [ "echo", "$HOME" ]   ：不会对变量进行替换$HOME。如果你想要执行变量替换，那么要么使用shell形式(CMD echo $HOME)，要么在exec形式下直接执行shell(CMD [ "sh", "-c", "echo $HOME" ])


dockerfile
https://docs.docker.com/engine/reference/builder/#format
https://docs.docker.com/compose/compose-file/#depends_on


# SHELL字符串处理技巧（${}、##、%%）
# https://www.cnblogs.com/jeffkuang/articles/3715397.html
${#VALUE}：计算VALUE字符串的字符数量。
${VALUE%.*}或${VALUE%%.*}：删除VALUE字符串中以分隔符“.”匹配的右边字符，保留左边字符。
${VALUE#*.}或${VALUE##*.}：删除VALUE字符串中以分隔符“.”匹配的左边字符，保留右边字符。
${VALUE/OLD/NEW}或${VALUE//OLD/NEW}：用NEW子串替换VALUE字符串中匹配的OLD子串。
${VALUE#START}或${VALUE%END}：删除VALUE字符串中以【START】开始的字符，保留右边；或反之
...


# awk
#
## 将字符串中匹配【()】中值付给变量数组
yyy.xml
sdf
  <key>hostname</key>
  <value>0.0.0.0</key>
cat yyy.xml | grep -A 1 "hostname" |awk 'match($0, "<value>(.*)</value>", a) {print a[1]}'
0.0.0.0

## awk 字符串以空格分隔赋值给变量数组
z=(`echo $line | awk  'BEGIN{FS=" "} {for(i=1;i<=NF;i++) {print $i}}'`)
echo ${z[0]}

## 将脚本参数赋值给数组，哪怕参数值为空时也会原样保存，可用于getopt之 a:: 类型的脚本参数"
n=$#
# 脚本参数从1开始，数组是从0开始，所以处理下，避免计算转换
aa[0]="占位"
for ((i=1;i<=n;i++)); do
    eval K=\$$i
    # "--" 及它之后的参数跳过
    if [[ "x${K}" == "x--" ]]; then
        break
    fi
    aa[$i]=$K
    echo aa数组$i列的值是: ${aa[$i]}
done

# awk格式化
# https://www.cnblogs.com/emanlee/p/3327576.html
# RS：Record Separator，记录分隔符
# ORS：Output Record Separate，输出当前记录分隔符
# FS：Field Separator，字段分隔符
# OFS：Out of Field Separator，输出字段分隔符
# aliyun DNS 格式化
# cc={aaa:{bbb:[{1,2,3},{a,b,c},{z,x,c}]}}
# cc=`echo ${cc#*[}`
# cc=`echo ${cc%]*}`
# cc=`echo ${cc:1:-1}`
# echo $cc | awk  'BEGIN {FS="},{"} { for(i=1;i<=NF;i++) {print $i} }' | awk 'BEGIN {FS=","; OFS=" "} { for(j=1;j<=NF;j++) {print $j} }'
1
2
3
a
b
c
z
x
c

## awk输出第三列,忽略空字符（并去掉前后的空格）
awk 'BEGIN {FS="|"} {if ($3 !~ /^ *$/) {sub(/^[[:blank:]]*/,"",$3); sub(/[[:blank:]]*$/,"",$3); printf "%2d %5s  %s\n",NR,$2,$3}}'  project.list
等同：awk 'BEGIN {FS="|"} {if ($3 !~ /^[[:blank:]]*$/ && $3 !~ /^$/) {sub(/^[[:blank:]]*/,"",$3); sub(/[[:blank:]]*$/,"",$3); printf "%2d %5s  %s\n",NR,$2,$3}}'  project.list

## awk计算
# 参考：https://blog.csdn.net/zcb_data/article/details/80622171
# LINE='docker-repo:5000/ufipf/fluentd-gcl 2020.08.19.092500 6e5c0736cd99 4 weeks ago 44.7MB'
# echo $LINE | awk 'BEGIN{FS=" "} {if($5 ~ /weeks/) {printf "%s %s %s %d days_ago %s\n" ,$1,$2,$3,$4*7+1,$7}}'
docker-repo:5000/ufipf/fluentd-gcl 2020.08.19.092500 6e5c0736cd99 29 days_ago 44.7MB

## awk正则表达式匹配
# cat ii.txt
docker-repo:5000/ufipf/fluentd-gcl  2020.08.19.0  6e5c0736cd90  28  44.7MB
docker-repo:5000/ufipf/fluentd-gcl  2020.08.19.1  6e5c0736cd99  88  44.7MB
#
# 非变量方式：
# 精确匹配，但不能使用变量：cat ii.txt | awk '{if($2 ~  /^关键字$/)      {printf "%s\n" ,$0}}'  ---使用【~】
#
# AWK与SHELL之间的变量传递方法：https://blog.csdn.net/xiaolang85/article/details/79884535
# 8 个有力的 Awk 内建变量：https://www.runoob.com/w3cnote/8-awesome-awk-built-in-variables.html
#
# 系统变量方式一(不能用于数值大小比较)：
F_TAG="2020.08.19.0"
# 注意：此种使用变量的方式，正则表达式不能使用【/^$/】这些字符，否则正则表达式不能正常运行
cat ii.txt | awk '{if($2 == "'"${F_TAG}"'")  {printf "%s\n" ,$0}}'  ---使精确匹配，可以使用变量： 用【==】，变量使用两个【"'"】包围
cat ii.txt | awk '{if($2 ~  "'"${F_TAG}"'")  {printf "%s\n" ,$0}}'  ---使模糊匹配，可以使用变量： 用【~】，变量使用两个【"'"】包围
# 系统变量方式二：
F_DAYS="50"
cat ii.txt | awk -v awk_F_DAYS=${F_DAYS}  '{if($4 > awk_F_DAYS)  {printf "%s\n" ,$0}}'
cat ii.txt | awk -v awk_F_DAYS=${F_DAYS}  '{if($4>awk_F_DAYS)    {printf "%s\n" ,$0}}'
#
## awk命令的正则表达式使用：https://my.oschina.net/u/2391658/blog/703922
~
==
!=
>
>=
<
<=
awk '{if($3 ~ /字符串/) print $0}' readfile    //包含字符串的所有记录都匹配，不精确
awk '$3 == "字符串" {print $0}' readfile   //确保只有字符串得以匹配，精确匹配
awk '{if($4 !~ /匹配字符串/) print $0}' readfile
awk '{if($6<$7) print "xxx"}' readfile
awk '{if($6<=$7) print "xxx"}' readfile
awk '{if($6>$7) print "xxx"}' readfile
awk '/[Gg]reen/' readfile   //匹配green Green的行
awk '$1 ~/^...a/' readfile  //抽取域1，其记录第一域的第四个字符时a
awk '$0 ~ /(字符串1|字符串2)/' readfile   //匹配|两边模式之一，使用或关系符时，语句必须用圆括号括起来
awk '/^字符串/' readfile
&&  AND：语句两边必须同时为真
||  OR：语句两边同时或其中一边匹配为真
!   非 求逆
# 注意：使用变量时，正则表达式不能使用【/^$/】这些字符，否则正则表达式不能正常运行
# 精确匹配，但不能使用变量：cat ${DOCKER_IMAGES_FILE_FORMAT} | awk '{if($2 ~  /^关键字$/)      {printf "%s\n" ,$0}}'  ---使用【~】
# 精确匹配，可以使用变量：  cat ${DOCKER_IMAGES_FILE_FORMAT} | awk '{if($2 == "'"${F_TAG}"'")  {printf "%s\n" ,$0}}'  ---使用【==】，变量使用两个【"'"】包围
# 模糊匹配，可以使用变量：  cat ${DOCKER_IMAGES_FILE_FORMAT} | awk '{if($2 ~  "'"${F_TAG}"'")  {printf "%s\n" ,$0}}'  ---使用【~】，变量使用两个【"'"】包围


#
{}和()的区别在shell是否会衍生子进程
( CMD )
{ CMD }

# 错误：
# Gtk-Message: Failed to load module "pantheon-filechooser-module"
# 参考：https://www.cnblogs.com/cshunter/p/9175212.html


# 程序员音乐
# https://musicforprogramming.net/


# vim用法
i | 光标前插入，并进入insert模式
a | 光标后插入，并进入insert模式
I | 航首插入，并进入insert模式
A | 行尾插入，并进入insert模式

o | 光标下方插入行，并进入insert模式
O | 光标上方插入行，并进入insert模式

r | 替换字符（一个）
R | 替换字符（多个）

cw | 替换单词
c$ | 替换文本到行尾

x | 删除光标下的字符
X | 删除光标前的字符

s | 删除一个字符，并进入insert模式
S | 删除整行，并进入insert模式

v        | 选定区域
Ctrl + v | 随意选定区域

d|y     | （删除/拷贝）选定区域
(dd|yy) | （删除/拷贝）整行
(d|y)w  | （删除/拷贝）单词
(d|y)$  | （删除/拷贝）光标到行尾
D | 删除光标到行尾
Y | 整行拷贝

p | 粘贴到光标之后
P | 粘贴到光标之前

0  | 行首
$  | 行尾
w  | 下个单词起始
nw | 下n个单词起始
e  | 本单词末尾（与w的区别）
gg | 文件起始
G  | 文件末尾

/[char]  | 查找字符，n向下继续查找，N向上继续查找
#        | 查找当前单词
%        | 查找配对括号
u        | 撤销修改
Ctrl + r | 重做修改
.        | 重复上次操作，输入字符或命令

:wq/ZZ   | 保存退出
:q!      | 不保存退出
:e!      | 丢弃修改并重新打开源文件
:! [cmd] | 执行外部命令

# vim无权限保存
：w !sudo tee %

# vim markdown
za     | 打开/关闭当前的折叠
zm     | 关闭所有折叠
:set foldlevel=1/2/3/4  | 设置折叠级别，1代表完全折叠
:set foldmod=syntax     | vim默认会为你将所有代码进行语法折叠，foldlevel= 设置折叠级别


# Shell printf 命令
# http://www.runoob.com/linux/linux-shell-printf.html
printf "%-10s %-8s %-4.2f\n" 郭靖 男 66.1234

# shell find 排除子路径 111及222，后面要跟-prune才行，/(、/)前后都要有空格 ，-o 表示or
find /home/kevin /( -path "/home/kevin/111" -o -path "/home/kevin/222" /) -prune  -type f  -print

# shell find 使用条件匹配(-o 或者 -a，默认为-a)
find /home/kevin  -type d  -a -name "2019*"  -print

# 查找进程id打开的文件
lsof -p [PID]

# 查看端口连接信息
lsof -i :[端口]

# shell中的(),(()),{},=,==,[],[[]]几种语法用法
# https://blog.csdn.net/Michaelwubo/article/details/81698307


# 文件中的%unicode转换为汉字
# 源文件（url编码）：file:///shouji/music-all/%E7%BE%8E%E7%BE%8E%E5%93%92_%E9%97%A8%E4%B8%BD.mp3
# 先转换为(什么码？)：file:///shouji/music-all/\xE7\xBE\x8E\xE7\xBE\x8E\xE5\x93\x92_\xE9\x97\xA8\xE4\xB8\xBD.mp3
# 再echo成汉字
cat 1.m3u | sed    's#\\#\\\\#g;s#\(%\)\([0-9a-fA-F][0-9a-fA-F]\)#\\x\2#g' > 11.m3u
cat 1.m3u | sed -r 's#\\#\\\\#g;s#(%)([0-9a-fA-F][0-9a-fA-F])#\\x\2#g' > 11.m3u
echo -e "`cat 11.m3u`" > 11.m3u
echo -e $( echo 'file:///shouji/music-all/%E7%BE%8E%E7%BE%8E%E5%93%92_%E9%97%A8%E4%B8%BD.mp3'  |  sed -r 's#\\#\\\\#g;s#(%)([0-9a-fA-F][0-9a-fA-F])#\\x\2#g' )
# 汉字【中】转码为以下格式：
# url      %E4%B8%AD
# 加密url  %4e2d
# utf8     %u4E2D
# unicode  \u4e2d     &#x: &#x4e2d;
# ascii    &#20013;   (十进制'20013' = 十六进制 '4E2D')

# 汉字转码
# 同理，你可以借助xxd转换为其他格式
content='我来了'
echo "$content" | xxd -ps                            #--- 转换为16进制
echo "$content" | xxd -ps  | sed 's/\(..\)/%\1/g'    #--- 转换为url样式
echo "$content" | xxd -ps  | sed 's/\(..\)/%\1/g' | tr -d '\n'    #--- 转换为url样式，删除换行符


# sed用其他字符作为分隔符
# 例如：#
# 在搜索模式下，需转义第一个分隔符，后面的不用转义
echo -e  "aaa disk \n sss"  | sed -n "\#disk#p"
# 在替换模式下，可以不用转义
echo -e  "aaa disk \n sss"  | sed -n "s#disk#ddddddd#p"


# 转换windows下制作的文件(换行符^M)
cat -v a.txt     #--- 查看是否有windows格式的换行符^M
dos2unix a.txt   #--- 转换
用vim也行： vim打开/etc/strongswan/ipsec.conf 然后ESC后使用 :set ff=unix ，最后保存退出


# 转换迅雷下载链接为ed2k链接
------------------------------------
迅雷下载协议是经过加密的(只在在ed2k地址前后分别加了AA和ZZ，然后base64编码下而已)，如：
thunder://QUFlZDJrOi8vfGZpbGV8JUU4JUExJThDJUU1JUIwJUI4JUU4JUI1JUIwJUU4JTgyJTg5LlRoZS5XYWxraW5nLkRlYWQuUzA2RTAxLiVFNCVCOCVBRCVFOCU4QiVCMSVFNSVBRCU5NyVFNSVCOSU5NS5IRFRWcmlwLjEwMjR4NTc2Lm1wNHw2NDg3NTg1MDl8ZjIyZmI2OTRjMDQ0ZmYyNjU0MjhhNTEzNWVhYzhiOTB8aD12eXFsNHFjNHpmYmx0eWNqdW1rcnNibDJza2JscTJsZnwvWlo=
直接在Linux下面是没有办法下载的。
在终端下用echo url | base64 -d 来解密，并显示地址，如（URL去掉头和尾）：
echo QUFlZDJrOi8vfGZpbGV8JUU4JUExJThDJUU1JUIwJUI4JUU4JUI1JUIwJUU4JTgyJTg5LlRoZS5XYWxraW5nLkRlYWQuUzA2RTAxLiVFNCVCOCVBRCVFOCU4QiVCMSVFNSVBRCU5NyVFNSVCOSU5NS5IRFRWcmlwLjEwMjR4NTc2Lm1wNHw2NDg3NTg1MDl8ZjIyZmI2OTRjMDQ0ZmYyNjU0MjhhNTEzNWVhYzhiOTB8aD12eXFsNHFjNHpmYmx0eWNqdW1rcnNibDJza2JscTJsZnwvWlo= | base64 -d
显示结果是：AAed2k://|file|%E8%A1%8C%E5%B0%B8%E8%B5%B0%E8%82%89.The.Walking.Dead.S06E01.%E4%B8%AD%E8%8B%B1%E5%AD%97%E5%B9%95.HDTVrip.1024x576.mp4|648758509|f22fb694c044ff265428a5135eac8b90|h=vyql4qc4zfbltycjumkrsbl2skblq2lf|/ZZ
所以解密后的地址是（即去掉头尾的AA和ZZ）：ed2k://|file|%E8%A1%8C%E5%B0%B8%E8%B5%B0%E8%82%89.The.Walking.Dead.S06E01.%E4%B8%AD%E8%8B%B1%E5%AD%97%E5%B9%95.HDTVrip.1024x576.mp4|648758509|f22fb694c044ff265428a5135eac8b90|h=vyql4qc4zfbltycjumkrsbl2skblq2lf|/


# 通过bt种子的hash值找到磁力下载链接：
例如某bt种子的hash='E5757D533B3690774519E6A80021E43C03A58C0B'
则磁力下载链接为：magnet:?xt=urn:btih:${hash}


# nvidia显卡驱动安装
# https://blog.csdn.net/WangJiankun_ls/article/details/82375928
# 切换到命令行模式
ctrl+alt+F1
# 自动或手动写入文件，以关闭nouveau模块
## 自动：这种方式需要先stop X windows，例如：ubuntu下
      sudo /etc/init.d/lightdm stop;
      sudo /path_to/NVIDIA驱动.run
## 手动：vi /etc/modprobe.d/blacklist-nouveau.conf
      blacklist nouveau
      options nouveau modeset=0
# 更新内核：
sudo update-initramfs -u
# 重启
reboot
#
# 切换到命令行模式
ctrl+alt+F1
# 关闭x windows
sudo /etc/init.d/lightdm stop
# 安装
sudo /path_to/NVIDIA驱动.run


# HTTPS 协议和原理
# https://developer.baidu.com/resources/online/doc/security/https-pratice-1.html
数字签名算法：RSA、Rabin、DSS、（HASH、DSA）
非对称密钥算法：RSA、ECDHE（默认模式ECDHE_RSA）、DH、DHE、ECDH
对称加密算法模式：AES-GCM、AES-CBC、 （算法：AES、DES、3DES、IDEA、RC4、RC5、RC6、ChaCha20； 模式：ECB、CBC、CFB、OFB、CTR、GCM(含GMAC消息验证码)； 消息验证码：MAC、GMAC）
数据完整性算法：SHA256、SHA1、MD5

# TLS 握手优化详解
# https://imququ.com/post/optimize-tls-handshake.html

# nginx 泛域名证书
# https://www.cnblogs.com/peteremperor/p/9994713.html
# nginx证书
ssl_certificate      /xxx/pemcrt/fullchain.pem;
ssl_certificate_key  /xxx/pemcrt/vcert.key;
ssl_dhparam          /xxx/pemcrt/dhparam.pem;
# 加密
ssl_protocols TLSv1 TLSv1.1 TLSv1.2;
ssl_ciphers "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-RSA-AES256-SHA384:ECDHE-RSA-AES128-SHA256:HIGH:!aNULL:!eNULL:!EXPORT:!DES:!MD5:!PSK:!RC4:!ADH:!DH";
# 指定服务器密码算法在优先于客户端密码算法
ssl_prefer_server_ciphers on;
# 重用加密的会话
ssl_session_cache   shared:SSL:10m;
ssl_session_timeout 10m;
ssl_session_tickets off;  # 负载均衡时使用on
# 服务器端OSCP查询证书状态
ssl_stapling on;
ssl_stapling_verify on;
ssl_trusted_certificate /pemcrt/fullchain.pem;
# HSTS
add_header Strict-Transport-Security "max-age=31536000; includeSubdomains;";


# https://2ton.com.au/Products/


# ansiable
# https://www.jianshu.com/p/98e999287120
# https://blog.csdn.net/fcxjluo/article/details/79992043

# Helm 入门指南
# https://www.hi-linux.com/posts/21466.html

# 什么是 istio
# http://cizixs.com/2018/08/26/what-is-istio/ 或 http://www.sohu.com/a/270131876_463994

# kubernetes 资源管理概述
# http://cizixs.com/2018/06/25/kubernetes-resource-management/

# 性能测试之 Gatling
# https://www.jianshu.com/p/cdd9d29256c0

# 使用 promethues 和 grafana 监控自己的 linux 机器
# http://cizixs.com/2018/01/24/use-prometheus-and-grafana-to-monitor-linux-machine/


# 换rpm到deb文件
sudo apt install  alien
sudo alien gcc3.4-3.4.5-alt17.x86_64.rpm


# getopt getopts 使用参考，文件名：
# getopts-参考.sh
# getopt-参考.sh


# 进制转换
## 十六进制转十进制:
echo '12af' | awk '{print strtonum("0x"$0)}'
4783
## 十进制转十六进制:
echo "4783"|awk '{printf("%x\n",$0)}'
12af
## 八进制转十进制:
echo '011257' | awk '{print strtonum($0)}'
4783
## 十进制转八进制:
echo "4783"|awk '{printf("%o\n",$0)}'
11257


# 16/10进制assic码转换为字符串（汉字、字符、数字）
## 16进制
HH='6211 4eec 31 2a 61 20 62 63'
echo $HH | awk '{ for(i=1;i<=NF;i++) {print strtonum("0x" $i)} }' | awk '{ for(i=1;i<=NF;i++) {printf "%c",$i} } END {printf "\n"}'
我们1*a bc
## 10进制
DD='25105 20204 49 42 97 32 98 99'
echo $DD | awk '{ for(i=1;i<=NF;i++) {print strtonum($i)} }' | awk '{ for(i=1;i<=NF;i++) {printf "%c",$i} } END {printf "\n"}'


# 字符串转换为16/10进制assic码（汉字、字符、数字）
SSS='我们1*a bc'
LENGTH=${#SSS}
## 16进制
for ((i=0;i<LENGTH;i++)); do printf "%x " "'${SSS:$i:1}"; done; echo
6211 4eec 31 2a 61 20 62 63
## 10进制
for ((i=0;i<LENGTH;i++)); do printf "%d " "'${SSS:$i:1}"; done; echo
25105 20204 49 42 97 32 98 99


# getopt getopts使用参考，文件名：
# getopt-参考.sh
# getopts-参考.sh


# 进制转换
## 十六进制转十进制:
echo '12af' | awk '{print strtonum("0x"$0)}'
4783
## 十进制转十六进制:
echo "4783"|awk '{printf("%x\n",$0)}'
12af
## 八进制转十进制:
echo '011257' | awk '{print strtonum($0)}'
4783
## 十进制转八进制:
echo "4783"|awk '{printf("%o\n",$0)}'
11257


# 16/10进制assic码转换为字符串（汉字、字符、数字）
## 16进制
HH='6211 4eec 31 2a 61 20 62 63'
echo $HH | awk '{ for(i=1;i<=NF;i++) {print strtonum("0x" $i)} }' | awk '{ for(i=1;i<=NF;i++) {printf "%c",$i} } END {printf "\n"}'
我们1*a bc
## 10进制
DD='25105 20204 49 42 97 32 98 99'
echo $DD | awk '{ for(i=1;i<=NF;i++) {print strtonum($i)} }' | awk '{ for(i=1;i<=NF;i++) {printf "%c",$i} } END {printf "\n"}'


# 字符串转换为16/10进制assic码（汉字、字符、数字）
SSS='我们1*a bc'
LENGTH=${#SSS}
## 16进制
for ((i=0;i<LENGTH;i++)); do printf "%x " "'${SSS:$i:1}"; done; echo
6211 4eec 31 2a 61 20 62 63
## 10进制
for ((i=0;i<LENGTH;i++)); do printf "%d " "'${SSS:$i:1}"; done; echo
25105 20204 49 42 97 32 98 99


# awk不输出指定列用法
w | sed '1d' |awk '{$2=$6=$7=""; print $0}'     #--- 不输出指定列（将相关列置空），其他全部输出

# awk BEGIN END 用法
awk -F: 'BEGIN {print "REDHAT"} {print NR;print} END {print "WESTOS"}' /etc/passwd

# sed
$ cat 1.htm
<A>111111</A>
<B>1</B>
<C></C>
<d>
    <A>111222</A>
    <E>33</E>
</d>
<F>99</F>
=======
<A>222222</A>
<B>1</B>
<C></C>
<d>
    <A>222333</A>
    <E>33</E>
</d>
<F>99</F>
# 示例命令：
## 搜索出 从匹配【<d>】的行开始，到【文件末尾】所有的行，并输出到屏幕
$ sed -n  '/<d>/,$p' 1.htm
## 搜索出 从匹配【<d>】的行开始，到匹配【行尾】的行结束之间的行，并输出到屏幕($，这个没有实际意义，只是为了和上面的条件做比较，你可以换成有意义的匹配)
$ sed -n  '/<d>/,/$/p' 1.htm
## 搜索出 从匹配【<d>】的行开始，到匹配【</d>】的行结束之间的行，并输出到屏幕
$ sed -n  '/<d>/,/<\/d>/p' 1.htm
## 搜索出 从匹配【<d>】的行开始，到【文件末尾】所有的行，再在结果中搜索匹配【<A>】的行，并输出到屏幕
$ sed -n  '/<d>/,${/<A>/p}' 1.htm
## 搜索出 从匹配【<d>】的行开始，到匹配【</d>】的行结束之间的行，然后再在结果中把匹配【以<A>开始，以</A>结束的行】替换为【<A>、</A>之间的字符串】，直接写入文件
sed -i '/<d>/,/<\/d>/{s/.*<A>\(.*\)<\/A>/\1/}'  1.htm
## 条件同上，直接输出到屏幕，不写入文件
sed -n '/<d>/,/<\/d>/{s/.*<A>\(.*\)<\/A>/\1/p}'  1.htm
## 搜索出 从匹配【<d>】的行开始，到匹配【</d>】的行结束之间的行，然后再在结果中搜索出匹配【<A>】的行，再在结果中把匹配【以<A>开始，以</A>结束的行】替换为【<A>、</A>之间的字符串】，把替换内容输出到屏幕
sed -n '/<d>/,/<\/d>/{/<A>/s/.*<A>\(.*\)<\/A>/\1/p}'  1.htm
## 匹配值的用法 \1 \2
$ echo 'abcabcabc' | sed 's/\(ab\)\(c\)/\1 xxx \2/g'
ab xxx cab xxx cab xxx c
## 匹配第4次
$ echo 'aaaaaa' | sed 's/a/A/4'
aaaAaa
## 在匹配行前后加入一行:
#行前加
sed -i '/allow linux.com/i\allow linux.cn' the.conf.file
#行前后
sed -i '/allow linux.com/a\allow linux.cn' the.conf.file


# echo用法：
X=`cat a.txt`   #a.txt是一个多行文本
echo "$X"       #输出结果会换行
echo $X         #输出结果不会换行，而是以一个空格代替换行符



# 获取web服务器、邮件服务器证书方法：
echo -n | openssl s_client -connect www.gc-life.com:443
echo -n | openssl s_client -connect smtp.163.com:465
## 获取证书并写入文件
echo -n | openssl s_client -connect smtp.163.com:465 | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > ./smtp.163.com.crt

cd /etc/pki/nssdb
certutil -A -n 'ym.163.com' -t 'P,P,P' -d ./ -i ./smtp.163.com.crt


# ss用法
ss sport = 22
ss state established '( dport = :ssh or sport = :ssh )'

# 测试udp侦听端口是否开启：（nc -v -u 8.8.8.8 53 ：这种测试其他服务的udp端口不行，可能是因为udp无需握手）
nc -v -u -l 5555
nc -v -u    ip 5555

# smb
# 列出某个IP地址所提供的共享文件夹
smbclient -L 198.168.0.1 -U username%password
# 像ftp客户端一样使用smbclient
smbclient //192.168.0.1/tmp  -U username%password
# 直接一次性使用smbclient命令
smbclient -c "mkdir share1" //192.168.0.1/tmp -U username%password

# nextcloud值webdav连接
# 参考：https://docs.nextcloud.com/server/13/user_manual/files/access_webdav.html
davs://[USERNAME]@[SERVER_IP]:[PORT]/remote.php/dav/files/[USERNAME]
davs://admin@nextcloud.zjlh.lan/remote.php/dav/files/admin/
如果是通过http连接，则将【davs://】替换为【dav://】


# ipv6
# https://segmentfault.com/a/1190000008794218
IPv6地址有两种类型，一种是Scope:Global，另一种为Scope:Link, 后者是有MAC地址通过一定的格式转换出来的全球唯一的本地链路地址。
在实际使用中发现两个问题，1、不能直接ping通。2、ping通了但是connect不上。这是因为，Scope:Link地址必须绑定网卡。
Windows
C:/>ping fe80::21c:a0ff:fec5:16cd%6
%6  表示接口编号
Linux
#ping类型为“Scope:Link”的地址
$ ping6 -I eth0 fe80::21a:a5ff:fec1:1060
$ ping6         fe80::21a:a5ff:fec1:1060%eth0
由于Link-Local地址的形式都是： FE80::a:b:c:d 格式，不带任何子网信息等指示路由。因此如果有多个网卡的机器上就有多个Link-Local地址，就必须指定从哪个接口出去，否则系统不知道是哪条链路上的地址。
#ping类型为“Scope:Global”的地址
dev@ubuntu:~$ ping6 2001::1
#或者根据enp0s3的id来ping
#获取enp0s3的id
dev@ubuntu:~$ grep enp0s3 /proc/net/if_inet6 | cut -d' ' -f2 | uniq
02
dev@ubuntu:~$ ping6 fe80::188d:cbae:80d5:7a7a%2
# 也行
dev@ubuntu:~$ ping6 fe80::188d:cbae:80d5:7a7a%enp0s3
#ping环回地址和global地址时，直接ping就可以了，而ping多播和Link-Local地址时，需要指定从哪个接口出去，这是因为机器上所有接口的Link-Local地址都属于同一个网段，当有多个接口时，根本没办法自动的判断应该从哪个接口出去

# docker
# 查看空间占用
docker system df
docker system df -v
# docker images格式化
docker images --format 'table {{.Repository}}\t{{.Tag}}\t{{.ID}}\t{{.CreatedAt}}\t{{.Size}}'
docker images --format 'table {{.ID}}'
docker images --format '{{.ID}}'
docker images --format 'xxx {{.ID}}'
# 旧镜像删除
# https://docs.docker.com/engine/reference/commandline/image_prune/#filtering
# docker image prune -a
#    until (<timestamp>) - only remove images created before given timestamp
#    label (label=<key>, label=<key>=<value>, label!=<key>, or label!=<key>=<value>)
docker image prune --filter="label=maintainer=john"
docker image prune --filter="label!=maintainer=john"
docker image prune --filter "foo=bar" --filter "bif=baz"
docker image prune -a --force --filter "until=24h"
docker image prune -a --force --filter "until=2017-01-04T00:00:00"


# 修改python默认版本
alternatives --set python /usr/bin/python3

# hw硬件信息
sudo lshw -numeric -class network

# curl
curl  --silent  --output /dev/null  --write-out '%{http_code}'   https://www.baidu.com

# nl（对行进行编号）
# nl命令用来计算文件中行号，可以将输出的文件内容自动的加上行号及更多用法
nl --help     #帮助
nl 1.txt
nl -nrz 1.txt
nl -ba 1.txt


# 剪贴板
$ xclip -o  -selection clipboard  -target TARGETS    #--- 列出粘贴目标
TIMESTAMP
TARGETS
SAVE_TARGETS
MULTIPLE
STRING
UTF8_STRING
TEXT
text/plain
text/html
$ xclip -o  -selection clipboard  -target UTF8_STRING    #--- 粘贴出目标格式内容
分类专栏： Linux/Shell
$ xclip -o  -target UTF8_STRING
分类专栏： Linux/Shell
$ xclip -o
分类专栏： Linux/Shell
$ xclip -o   -selection clipboard  -target image/png  > 2.png   #--- 截图输出到文件2.png



--add-masquerade     snat就是ip地址伪装，是将接收到的请求的源地址设置为转发请 求网卡的地址
--add-forward-port   dnat
