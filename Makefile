.PHONY: format test run compile compileTests compileGui

format:
	node ../../cloned/gren-format-unofficial/node-gren-format-unofficial/dist/index.cjs

compile: compileTests compileGui

compileTests:
	npx gren make --output=test src/TestRunner.gren

compileGui:
	npx gren make --output=gui src/Main.gren

test: format compileTests
	node ./test

run: format compileGui
	node ./gui
