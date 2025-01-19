package;

import coconut.ui.*;
import coconut.haxeui.*;
import haxe.ui.*;
import haxe.ui.core.*;
import haxe.ui.components.*;
import haxe.ui.containers.*;
import coconut.data.Model;

class Main {
	static function main() {
		final app = new HaxeUIApp();
		app.ready(function() {
			var root = new Component();
			root.width = 500;
			root.height = 500;
			app.addComponent(root);

			Renderer.mount(root, '<MyView />');

			Toolkit.init();

			app.start();
		});
	}

	static var EMPTY = [];
}

class MyView extends View {
	@:state var counter:Int = 0;
	@:state var click:Int = 0;

	function render()
		'
		<VBox>
			<Button text="Button $counter" onClick=${clicked} />
			<Label text="Clicked $click times" />
			<ComplexButton title="Complex Button $counter" />
			<Button text="Show Dialog" onClick=${showDialog} />
			<AnotherView />
		</VBox>
	';

	private function clicked() {
		trace("Clicked!");
		click++;
	}

	private function showDialog() {
		haxe.ui.containers.dialogs.Dialogs.messageBox('Info message content\n\nLine1\nLine2\nLine3\n\nSomething else', 'Info', 'info');
	}

	override function viewDidMount() {
		new haxe.Timer(1000).run = function() {
			counter += 1;
		}
	}
}

class MyState implements coconut.data.Model {
	@:editable public var id:Int;
}

var myState:MyState = new MyState({id: 1});

class AnotherView extends View {
	override function viewDidMount() {
		new haxe.Timer(500).run = function() {
			myState.id += 2;
		}
	}

	function render()
		'
		<VBox>
			<Button text="Cool ${myState.id}" />
		</VBox>
	';
}

class ComplexButton extends View {
	@:attribute var title:String;

	function render()
		'<Button text=$title />';
}
