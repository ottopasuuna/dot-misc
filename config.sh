description="Miscellaneous config files"

ensure_dirs=(
    $HOME/.config/termite
    $HOME/.config/mpd
)

link_map=(
    [tmux.conf]=$HOME/.tmux.conf
    [gdbinit]=$HOME/.gdbinit
    [gitconfig]=$HOME/.gitconfig
    [redshift.conf]=$HOME/.config/redshift.conf
    [termite_config]=$HOME/.config/termite/config
    [alacritty]=$HOME/.config/alacritty
    [mpd.conf]=$HOME/.config/mpd/mpd.conf
    [ranger]=$HOME/.config/ranger
    [bin]=$HOME/bin
    [abcde.conf]=$HOME/.abcde.conf
    [taskrc]=$HOME/.taskrc
    [task]=$HOME/.task
)
