DATA ?= data.json

radar.html: template.html $(DATA)
	@echo "Building radar.html from $(DATA)..."
	@python3 -c "from datetime import datetime; t=open('template.html').read(); d=open('$(DATA)').read(); now=datetime.now().strftime('%B %d, %Y at %H:%M:%S'); open('radar.html','w').write(t.replace('/** @DATA@ */', d).replace('/** @GENERATED_AT@ */', now))"
	@echo "Done."

clean:
	rm -f radar.html

.PHONY: clean
