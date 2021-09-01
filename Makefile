
setup: GNUmakefile admin

GNUmakefile: admin
	ln -s admin/GNUmakefile ./

admin:
	git remote add --no-tags -ft elpa-admin \
	    gnu-elpa git://git.sv.gnu.org/emacs/elpa.git
	git worktree add -b elpa-admin admin gnu-elpa/elpa-admin
