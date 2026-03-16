radar.html: template.html data.json
	@echo "Building radar.html..."
	@python3 -c "import sys; t=open('template.html').read(); d=open('data.json').read(); open('radar.html','w').write(t.replace('/** @DATA@ */', d))"
	@echo "Done."

clean:
	rm -f radar.html

.PHONY: clean
