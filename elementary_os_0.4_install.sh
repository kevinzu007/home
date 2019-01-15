#!/bin/bash

# elementary_install:
# ------------------------
# add-apt-repository: command not found
sudo apt install -y  software-properties-common python-software-properties  apt-transport-https  ca-certificates

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
sudo apt install -y  axel       #--- 多路http下载加速
sudo apt install -y  rtorrent   #--- 命令行torrent客户端
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


sudo apt install -y  catfish
sudo apt install -y  tmux
sudo apt install -y  tree
sudo apt install -y  lnav
sudo apt install -y  remmina remmina-plugin-rdp  remmina-plugin-vnc
sudo apt install -y  gparted
sudo apt install -y  mysql-workbench
sudo apt install -y  sqlitebrowser
sudo apt install -y  redis-tools
sudo apt install -y  com.github.luizaugustomm.tomato


sudo apt install -y  tlp
sudo apt install -y  libreoffice  libreoffice-l10n-zh-cn
sudo apt install -y  inkscape
sudo apt install -y  dia
sudo apt install -y  gimp
sudo apt install -y  planner
sudo apt install -y  filezilla
#sudo apt install -y  fcitx  fcitx-googlepinyin
sudo apt install -y  moc  moc-ffmpeg-plugin
#sudo apt install -y  pidgin
sudo apt install -y  iptux
sudo apt install -y  chromium-browser
sudo apt install -y  firefox  #firefox-locale-zh-hans
sudo apt install -y  steam
sudo apt install -y  pwgen
sudo apt install -y sox libsox-fmt-all   #命令行音乐播放器
sudo apt install -y audacious    #音乐播放器，支持音乐信息中的gbk中文（设置自动检测中文，os需安装gbk支持）


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
# https://cloud.tencent.com/developer/article/1010589
sudo curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install git-lfs
git lfs install


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

# mldonkey
sudo apt install -y  mldonkey-server  mldonkey-gui   # or  kmldonkey


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


# asciinema终端录屏
# https://asciinema.org/docs/installation#installing-on-linux
sudo apt-add-repository ppa:zanchey/asciinema
sudo apt-get update
sudo apt-get install asciinema
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
# https://github.com/nvbn/thefuck#manual-installation
#sudo apt install -y  python3-dev python3-pip
#pip3 install --upgrade pip
#pip3 install --user thefuck
# put 'eval $(thefuck --alias)' into ~/.bash_aliases
sudo apt install -y  thefuck


# pg client & pgadmin
# https://www.postgresql.org/download/linux/ubuntu/
echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | \
  sudo apt-key add -
sudo apt-get update
sudo apt install -y  pgadmin4 postgresql-client    #--- 不加版本号，代表最新版，下同
# /usr/lib/postgresql/9.6/bin/initdb -D /var/lib/postgresql/9.6/main --auth-local peer --auth-host md5
# Success. You can now start the database server using:
#     /usr/lib/postgresql/9.6/bin/pg_ctl -D /var/lib/postgresql/9.6/main -l logfile start
# Ver Cluster Port Status Owner    Data directory               Log file
# 9.6 main    5432 down   postgres /var/lib/postgresql/9.6/main /var/log/postgresql/postgresql-9.6-main.log


# pgcli --- 自动命令提示
# http://www.postgres.cn/news/viewone/1/313
pip3 install pgcli
sudo pip3 install pgcli


# docker-ce
# https://docs.docker.com/install/linux/docker-ce/ubuntu/#set-up-the-repository
sudo apt remove  docker docker-engine docker.io
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable" | sudo tee /etc/apt/sources.list.d/docker-ce.list
sudo apt update
sudo apt install -y  docker-ce


# handbrakehi视频转码，含ong播放器n用dvd解码包，替代w32ocdes
sudo add-apt-repository -y -u  ppa:stebbins/handbrake-releases
sudo apt install -y  handbrake-gtk  handbrake-cli


# wireshark
sudo add-apt-repository -y -u  ppa:wireshark-dev/stable
sudo apt install -y  wireshark


# wiznote
sudo add-apt-repository -y -u  ppa:wiznote-team
sudo apt install -y  wiznote



# sublime
sudo add-apt-repository -y -u  ppa:webupd8team/sublime-text-3
sudo apt install -y  sublime-text
# 修复在fcitx框架下不能输入中文的问题
git clone https://github.com/lyfeyaj/sublime-text-imfix.git
cd sublime-text-imfix
./sublime-imfix



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


# telegram
# http://blog.topspeedsnail.com/archives/5116
sudo add-apt-repository  -y -u  ppa:atareao/telegram
sudo apt install -y  telegram




# -----------------------
# deb

# jiangguoyun
wget -P ~/Downloads/ https://www.jianguoyun.com/static/exe/installer/ubuntu/nautilus_nutstore_amd64.deb
sudo dpkg -i ~/Downloads/nautilus_nutstore_amd64.deb
sudo apt install -f


# haroopad - markdown
curl  https://bitbucket.org/rhiokim/haroopad-download/downloads/haroopad-v0.13.1-x64.deb  \
    -L  -o ~/Downloads/haroopad-v0.13.1-x64.deb  \
    --socks5 192.168.11.10:1080
sudo dpkg -i  ~/Downloads/haroopad-v0.13.1-x64.deb
# 使用中，如果不能打开，请删除tmp文件
#rm  ~/.config/Haroopad/.tmp/*


# marktext - markdown
# https://github.com/marktext/marktext/releases


# zoom
wget  https://www.zoom.us/client/latest/zoom_amd64.deb  -P ~/Downloads/
sudo dpkg -i ~/Downloads/zoom_amd64.deb
sudo apt install -f


# Rocket.Chat client
# https://github.com/RocketChat/Rocket.Chat.Electron/releases
proxychains4  wget  https://github.com/RocketChat/Rocket.Chat.Electron/releases/download/2.10.2/rocketchat_2.10.2_amd64.deb  -O ~/Downloads/rocketchat_amd64.deb
sudo  dpkg -i  ~/Downloads/rocketchat_amd64.deb


# deepin截图
# http://blog.csdn.net/groundhappy/article/details/54896747
sudo apt install -y  python-xlib
wget http://packages.linuxdeepin.com/deepin/pool/main/d/deepin-scrot/deepin-scrot_2.0-0deepin_all.deb  -P ~/Downloads/
sudo dpkg -i ~/Downloads/deepin-scrot*
# run "/usr/bin/deepin-scrot  > /dev/null 2>&1"
# 添加系统快捷键，例如：Ctrl-Alt-A


# file converto pdf...
#wget -P ~/Downloads/  https://github.com/jgm/pandoc/releases/download/1.19.2.1/pandoc-1.19.2.1-1-amd64.deb
#sudo dpkg -i  ~/Downloads/pandoc-1.19.2.1-1-amd64.deb
sudo apt install -y  pandoc


# teamviewer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb  -P ~/Downloads/
sudo dpkg -i ~/Downloads/teamviewer_amd64.deb
sudo apt install -f -y



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

# youdaodict
# neteasteMusic



# ------------------------
# install bin to OPT
mkdir  ~/.opt

# xMind
wget  http://xiazai.xmindchina.cn/trail/xmind-8-linux.zip  -O ~/Downloads/xmind-8-linux.zip
unzip ~/Downloads/xmind-8-linux.zip  -d ~/.opt/xmind/
sudo  ~/.opt/xmind/setup.sh
# cp .desktop




# ------------------------
# source install

# remote-tail
git clone   https://github.com/mylxsw/remote-tail.git
wget  https://github.com/mylxsw/remote-tail/releases/download/v0.1.1/remote-tail-linux  -P ./remote-tail
sudo  cp ./remote-tail/remote-tail-linux  /usr/local/bin/remote-tail




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
# export https_proxy='http://192.168.11.10:8118'
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
# # -O ： 目标文件名
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

# kvm 远程克隆
virt-clone  --auto-clone  --connect qemu+ssh://root@192.168.11.202/system  -o v-192-168-11-25-pg  -n pg-t


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



# 条件判断
# https://blog.csdn.net/jasonzeng/article/details/53286384
[  ]  ：表示条件测试。
[[  ]]：表示高级字符串处理函数
    双方括号中判断命令使用标准的字符串比较，还可以使用匹配模式，从而定义与字符串相匹配的正则表达式。
((  ))：表示数学表达式
    在判断命令中只允许在比较中进行简单的算术操作，而双圆括号提供更多的数学符号，而且在双圆括号里面的'>','<'号不需要转意。



# 拷贝文件
rsync -av ../pg --exclude=.git root@47.52.22.138:~/
cp  `ls | grep -v zhidao.txt | xargs`   /test2


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




# oracle备份
create directory backup_dir  as '/u01/backup/nc65';

DbUserName=nc65
DbPassword=rmIBoJ628nP1bzw1OXnW
DbSchemas=nc65
ExpdpOption=
OracleDirectoryName=backup_dir
DbBackupToFileName=nc65-expdp

expdp ${DbUserName}/${DbPassword} schemas=${DbSchemas} ${ExpdpOption} directory=${OracleDirectoryName} dumpfile=${DbBackupToFileName}.dmp logfile=${DbBackupToFileName}.log


# 建立pg只读用户
CREATE USER ff83df9995bc56df WITH ENCRYPTED PASSWORD '91ebf844c8ea7e3dcde2478d93b756';
alter user ff83df9995bc56df set default_transaction_read_only=on ;
grant USAGE ON SCHEMA public to ff83df9995bc56df ;
在某数据库中：
grant select on all tables in schema public to ff83df9995bc56df ;

for DB in `cat ./pg_db.list`
do
    echo ----- ${DB} -----
/usr/local/pgsql/bin/psql << EOF
    \c ${DB}
    grant select on all tables in schema public to ff83df9995bc56df ;
    \q
EOF
done



docker-compose.yml:
# https://blog.csdn.net/kikajack/article/details/79751026
env_file    ：可以给docker-compose.yml中的变量用，也可以给容器中的环境变量用，默认文件为./.env，如果使用默认文件，则可以不在docker-compose.yml中明确指定。docker-compose.yml中的变量也可以来自shell的export环境变量，如果shell与.env中的值不一样，则shell中的值优先于.env文件中指定的值。docker-compose config可以显示结果
environment ：仅给容器中的环境变量用，不能用于docker-compose.yml中的变量。使用environment关键字时，如果不赋值，则会将shell中的环境变量传递给容器
args        ：是给Dockerfile中的变量的，用于制作镜像，即Dockerfile中的AVG
变量优先级顺序：environment --> env_file --> Dockerfile(ARG/ENV)

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



# awk
yyy.xml
sdf
  <key>hostname</key>
  <value>0.0.0.0</key>
cat yyy.xml | grep -A 1 "hostname" |awk 'match($0, "<value>(.*)</value>", a) {print a[1]}'
0.0.0.0


#
{}和()的区别在shell是否会衍生子进程
( CMD )
{ CMD }


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


# vim markdown
za                | 打开/关闭当前的折叠
zm                | 关闭所有折叠
:set foldlevel=2  | 设置折叠级别，1/2/3/4等，1代表完全折叠



