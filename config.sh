description="Miscellaneous config files"

link_map=(
    [tmux.conf]=$HOME/.tmux.conf
    [gdbinit]=$HOME/.gdbinit
    [gitconfig]=$HOME/.gitconfig
    [redshift.conf]=$HOME/.config/redshift.conf
    [termite_config]=$HOME/.config/termite/config
    [mpd.conf]=$HOME/.config/mpd/mpd.conf
)

__preinstall__() {
    mkdir -p $HOME/.config/termite
    mkdir -p $HOME/.config/mpd
}
