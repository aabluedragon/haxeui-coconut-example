.PHONY: build run html-build html-run

build:
	haxe hxwidgets.hxml

run: build
	./build/hxwidgets/Main

html-build:
	haxe html5.hxml

html-run: html-build
	python3 -m http.server 8080 -d build/html5