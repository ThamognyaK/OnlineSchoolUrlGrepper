DIR = "$(pwd)"
.PHONY: install
install:
	cp $(DIR)/schoolurlgrep /usr/local/bin/
	cp $(DIR)/schoolurlgrep.js /usr/local/bin

.PHONY: install-linux
install-linux:
	cp $(DIR)/schoolurlgrep-linux /usr/local/bin/schoolurlgrep

.PHONY: install-macos
install-macos:
	cp $(DIR)/schoolurlgrep-macos /usr/local/bin/schoolurlgrep

.PHONY: delete
delete:
	rm -rf /usr/local/bin/schoolurlgrep 
	rm -rf /usr/local/bin/schoolurlgrep.js

.PHONY: update
update:
	git pull
	cp $(DIR)/schoolurlgrep /usr/local/bin/
	cp $(DIR)/schoolurlgrep.js /usr/local/bin
