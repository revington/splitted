BIN= ./node_modules/.bin
REPORTER=spec

test: test-unit test-cli
test-unit:
	@rm -rf test.*
	@NODE_ENV=test $(BIN)/mocha \
		--reporter $(REPORTER) 
	@rm -rf test.*

test-cli:
	@./test/acceptance/cli-test.sh


.PHONY: test
