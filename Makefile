.PHONY: format test run compile compileTests compileGui

#format:
#	elm-format --yes src/**/*.gren

compile: compileTests compileGui

compileTests:
	gren make --output=test src/TestRunner.gren

compileGui:
	gren make --output=gui src/Main.gren

test: compileTests
	node ./test

run: compileGui
	node ./gui