
.PHONY: link unlink

link:
	ln -s $(PWD)/tmux.conf $(HOME)/.tmux.conf
	ln -s $(PWD)/gdbinit $(HOME)/.gdbinit
	ln -s $(PWD)/gitconfig $(HOME)/.gitconfig
	ln -s $(PWD)/redshift.conf $(HOME)/.config/redshift.conf

unlink:
	unlink $(HOME)/.tmux.conf
	unlink $(HOME)/.gdbinit
	unlink $(HOME)/.gitconfig
	unlink $(HOME)/.config/redshift.conf
