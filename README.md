Tested with Haxe v4.3.6 on Ubuntu Linux x64.

## Prepare your environment
### Coconut:

```bash
haxelib git coconut.haxeui https://github.com/MVCoconut/coconut.haxeui.git
haxelib install coconut.ui
haxelib install coconut.data
```

### hxwidgets:
https://haxeui.org/api/getting-started/backends/native-backends/haxeui-hxwidgets.html

```bash
haxelib install hxcpp
haxelib install hxWidgets
haxelib install haxeui-hxwidgets
```
** Remember to install wxWidgets, [steps depending on platform](https://haxeui.org/api/getting-started/backends/native-backends/haxeui-hxwidgets.html)
### html5:
https://haxeui.org/api/getting-started/backends/composite-backends/haxeui-html5.html

```bash
haxelib install haxeui-html5
```

## Building & Running:

### Build hxwidgets:
```bash
make
```

### Build and run hxwidgets:
```bash
make run
```

### Build html5:
```bash
make html-build
```

### Build and run html5 (requires "python3" in PATH):
```bash
make html-run
```