RSYNC	= -e ssh -azv --cvs-exclude --delete --exclude 'app/webroot/p/*'
RSYNC_NORM = $(RSYNC) --exclude 'tools/*' --exclude 'docs/*' --exclude 'patches/*' --exclude 'stats/*' --exclude 'app/webroot/thumbs/*'
RSYNC_NOCACHE	= $(RSYNC_NORM) --exclude 'app/tmp/logs/*' --exclude 'app/tmp/sessions/*'
RSYNC_FINAL	= $(RSYNC_NOCACHE) --exclude 'app/tmp/*'

REMOTE_DEVEL	= im9@lescigales:./dev/

send:
	@clean
	@rsync $(RSYNC_FINAL) . $(REMOTE_DEVEL)

first:
	@clean
	@rsync $(RSYNC) . $(REMOTE_DEVEL)

nocache: 
	@clean
	@rsync $(RSYNC_NOCACHE) . $(REMOTE_DEVEL)
