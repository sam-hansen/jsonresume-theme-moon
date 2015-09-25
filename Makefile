REPORTER ?= spec

test:
	mocha \
    --reporter $(REPORTER) \
    test/*.js \
    
bump: ;node ./bumpVersion.js

version: test bump

pub: ;npm publish

dist: test bump pub

.PHONY: test bump pub