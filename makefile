
.PHONY: link unlink

link:
	ln -s $(PWD)/tmux.conf $(HOME)/.tmux.conf
	ln -s $(PWD)/gdbinit $(HOME)/.gdbinit
	ln -s $(PWD)/gitconfig $(HOME)/.gitconfig
	ln -s $(PWD)/redshift.conf $(HOME)/.config/redshift.conf
	ln -s $(PWD)/termite_config $(HOME)/.config/termite/config

unlink:
	unlink $(HOME)/.tmux.conf
	unlink $(HOME)/.gdbinit
	unlink $(HOME)/.gitconfig
	unlink $(HOME)/.config/redshift.conf
	unlink $(HOME)/.config/termite/config
