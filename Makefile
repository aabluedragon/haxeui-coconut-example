.PHONY: build run

build:
	haxe hxwidgets.hxml

run: build
	./build/hxwidgets/Main