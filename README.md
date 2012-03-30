# shirokichi/dotfiles

- .vimrc
- .vim
- .screenrc
- .tmux.conf
- .symlink.sh
- .gitigonre, README

## how to use
    # cd
    # git clone --recursive git://github.com/shirokichi/dotfiles.git
    # sh dotfiles/symlink.sh
    # vim
    :NeoBundleInstall
    # cd .vim/bundle/vimproc
    # make -f make_unix.mk
