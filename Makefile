port: 
	cat _config.yml | grep port |grep '[0-9]*'

preview: port
	jekyll serve

preview-drafts: port
	jekyll serve --future

add:
	git add -A

deploy-www:
	[ -d ./deploy/ ] && sudo -u www rsync -va --delete ./deploy/ /usr/local/www/belemnita.com


