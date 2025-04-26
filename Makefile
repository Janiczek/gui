.PHONY: format compile compileTests compileGui compileGuiStatic test run runStatic

format: src/**/*.gren
	node ../../cloned/gren-format-unofficial/node-gren-format-unofficial/dist/index.cjs

compile: compileTests compileGui

compileTests: src/**/*.gren
	npx gren make --output=test src/TestRunner.gren

compileGui: src/**/*.gren
	npx gren make --output=gui src/Main.gren

compileGuiStatic: src/**/*.gren
	npx gren make-static src/Main.gren gui-static

test: format compileTests
	node ./test

run: format compileGui
	node ./gui 'label:"XYZ"'

runStatic: format compileGuiStatic
	./gui-static 'label:"XYZ"'
