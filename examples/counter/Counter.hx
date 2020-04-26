package examples.counter;

import haxe.extern.Rest;
import runtime.flutter.BuildContext;
import runtime.flutter.Widget;
import runtime.flutter.widgets.StatefulWidget;
import runtime.flutter.widgets.State;
import runtime.flutter.widgets.StatelessWidget;
import runtime.flutter.widgets.SizedBox;
import runtime.flutter.widgets.Binding;
import runtime.flutter.material.MaterialApp;

private class MyApp extends StatelessWidget {
	public function new() {
		super();
	}

	public override function build():Widget {
		return new MaterialApp({
			title: "Counter App",
			initialRoute: "/",
			home: new MyHomePage("Counter App Home Page")
		});
	}
}

class MyHomePage extends StatefulWidget {
	public var title:String;

	public function new(title:String) {
		super();
		this.title = title;
	}

	public override function createState() {
		return new MyHomePageState(this.title);
	}
}

class MyHomePageState extends State<MyHomePage> {
	private var counter = 0;

	public var title:String;

	public function new(title:String) {
		super();
		this.title = title;
	}

	public override function build(context:BuildContext) {
		return new SizedBox({});
	}
}

class Counter {
	static function main() {
		Binding.runApp((rest:Rest<Dynamic>) -> {
			return new MyApp();
		});
	}
}
