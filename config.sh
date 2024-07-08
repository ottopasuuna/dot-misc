description="Miscellaneous config files"

ensure_dirs=(
    $HOME/.config/termite
    $HOME/.config/mpd
    $HOME/.config/task
    $HOME/.config/pulse
)

link_map=(
    [tmux.conf]=$HOME/.tmux.conf
    [gdbinit]=$HOME/.gdbinit
    [gitconfig]=$HOME/.gitconfig
    [redshift.conf]=$HOME/.config/redshift.conf
    [termite_config]=$HOME/.config/termite/config
    [alacritty]=$HOME/.config/alacritty
    [kitty]=$HOME/.config/kitty
    [mpd.conf]=$HOME/.config/mpd/mpd.conf
    [ncmpcpp]=$HOME/.config/ncmpcpp
    [ranger]=$HOME/.config/ranger
    [bin]=$HOME/bin
    [abcde.conf]=$HOME/.abcde.conf
    [taskrc]=$HOME/.config/task/taskrc
    [task]=$HOME/.local/share/task
    [aconfmgr]=$HOME/.config/aconfmgr
    [asoundrc]=$HOME/.asoundrc
    [jackdrc]=$HOME/.jackdrc
    [pulse/client.conf]=$HOME/.config/pulse/client.conf
    [pulse/daemon.conf]=$HOME/.config/pulse/daemon.conf
)
