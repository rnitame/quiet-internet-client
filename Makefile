PRE_COMMIT_FILE := $(shell pwd)/.git/hooks/pre-commit

.PHONY: init
init:
	cp pre-commit.sample $(PRE_COMMIT_FILE)
	chmod 755 $(PRE_COMMIT_FILE)