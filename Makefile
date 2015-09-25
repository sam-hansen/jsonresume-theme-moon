REPORTER ?= spec

test:
	mocha \
    --reporter $(REPORTER) \
    test/*.js \
    
bump: ;node ./bumpVersion.js

version: test bump

.PHONY: test bump