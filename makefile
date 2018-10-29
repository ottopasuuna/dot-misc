
.PHONY: link unlink

link:
	ln -s $(CURDIR)/tmux.conf $(HOME)/.tmux.conf
	ln -s $(CURDIR)/gdbinit $(HOME)/.gdbinit
	ln -s $(CURDIR)/gitconfig $(HOME)/.gitconfig
	ln -s $(CURDIR)/redshift.conf $(HOME)/.config/redshift.conf
	ln -s $(CURDIR)/termite_config $(HOME)/.config/termite/config

unlink:
	unlink $(HOME)/.tmux.conf
	unlink $(HOME)/.gdbinit
	unlink $(HOME)/.gitconfig
	unlink $(HOME)/.config/redshift.conf
	unlink $(HOME)/.config/termite/config
