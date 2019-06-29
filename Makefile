

all: clean_site

clean_site: clean _site

_site:
	jekyll build
	ln -s . _site/beanstalkd

server: clean_site
	jekyll serve --watch

clean:
	rm -rf _site

.PHONY: server clean
