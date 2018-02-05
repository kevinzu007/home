
# 大而全的插件集群，可能有些不是自己需要的，总体挺好，请看链接
# https://github.com/amix/vimrc.git
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# 添加自己的plugs
# 将插件clone到 ~/.vim_runtime/sources_non_forked 目录中。
# 例如vim-rails： git clone git://github.com/tpope/vim-rails.git  sources_non_forked/vim-rails

# 在插入模式自动进入粘贴模式：如果在shell编程时，不会自动缩进
#git clone   https://github.com/ConradIrwin/vim-bracketed-paste.git  ~/.vim_runtime/sources_non_forked/vim-bracketed-paste





# 以下用pathogen管理工具安装vim插件，diy自己的插件库======================
#
# 插件管理工具pathogen
# https://github.com/tpope/vim-pathogen.git
# 以下按pathogen的套路来
mkdir -p  ~/.vim/autoload
curl -LSso  ~/.vim/autoload/pathogen.vim  https://tpo.pe/pathogen.vim
# 建立插件目录
mkdir -p  ~/.vim/bundle     #--- 插件autoload 目录


# 一般用户都需要的基本插件
cd  ~/.vim/bundle
git clone  https://github.com/tpope/vim-sensible.git
# 'backspace'：通过任何插入模式退格。
# 'incsearch'：在按下输入之前开始搜索。
# 'listchars'：使:set list（可见的空白）更漂亮。
# 'scrolloff'：始终在光标上方/下方至少显示一行。
# 'autoread'：自动加载文件更改。您可以按下撤消u。
# runtime! macros/matchit.vim：加载Vim附带的matchit.vim版本。


# 在插入模式下，自动设置为paste模式
cd  ~/.vim/bundle
https://github.com/ConradIrwin/vim-bracketed-paste.git


# 美丽的状态栏 --- 这个在大而全里面已经有了
cd  ~/.vim/bundle
git clone  https://github.com/itchyny/lightline.vim.git


# 多种语言语法检查 --- 这个在大而全里面已经有了
git clone  cd ~/.vim/bundle && \
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git






# ======================
# 可以添加到vimrc中，也可以在命令模式下
:set list   #--- 编辑时显示空格
:set number    #--- 显示行号
:set nonumber  #--- 同上
:set cindent shiftwidth=4    #--- 缩进




