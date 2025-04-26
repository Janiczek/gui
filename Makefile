.PHONY: format test run compile compileTests compileGui

#format:
#	elm-format --yes src/**/*.gren
#	node ../../cloned/gren-format-unofficial/node-gren-format-unofficial/src/index.js

compile: compileTests compileGui

compileTests:
	npx gren make --output=test src/TestRunner.gren

compileGui:
	npx gren make --output=gui src/Main.gren

test: compileTests
	node ./test

run: compileGui
	node ./gui
