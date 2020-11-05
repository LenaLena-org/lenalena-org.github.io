port: 
	cat _config.yml | grep port |grep '[0-9]*'

preview: port
	jekyll serve

preview-drafts: port
	jekyll serve --future

add:
	git add -A



