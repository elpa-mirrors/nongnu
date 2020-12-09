
setup: GNUmakefile admin

GNUmakefile: admin
	ln -s admin/GNUmakefile ./

admin:
	git worktree add -b elpa-admin admin origin/elpa-admin
