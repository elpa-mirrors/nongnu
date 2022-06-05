
setup: GNUmakefile manifest.scm admin

GNUmakefile: admin
	ln -s admin/GNUmakefile ./

manifest.scm: admin
	ln -s admin/elpa-manifest.scm $@

admin:
	git remote add --no-tags -ft elpa-admin \
	    gnu-elpa git://git.sv.gnu.org/emacs/elpa.git
	git worktree add -b elpa-admin admin gnu-elpa/elpa-admin
