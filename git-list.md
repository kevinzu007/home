# tmux
git clone https://github.com/gpakosz/.tmux.git
    ln -s -f .tmux/.tmux.conf
    cp .tmux/.tmux.conf.local .


# vim
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
    sh ~/.vim_runtime/install_awesome_vimrc.sh
cd ~/.vim_runtime
    git pull --rebase

mkdir -p ~/.vim/bundle                                                                    │
cd ~/.vim/bundle                                                                          │
git clone https://github.com/ConradIrwin/vim-bracketed-paste



