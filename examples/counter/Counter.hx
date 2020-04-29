package examples.counter;

import haxe.extern.Rest;
import runtime.flutter.*;
import runtime.flutter.foundation.*;
import runtime.flutter.widgets.*;
import runtime.flutter.material.*;

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

	private function incrementcounter() {
		this.setState(() -> {
			this.counter++;
		});
	}

	public override function build(context:BuildContext) {
		return new Scaffold({
			appBar: new AppBar({
				title: new Text(this.title)
			}),
			body: new Center({
				child: new Column({
					mainAxisAlignment: MainAxisAlignment.center,
					children: [
						new Text("You have pushed the button this many times"),
						new Text(Std.string(this.counter), {
							key: new Key("counter"),
							style: Theme.of(context).textTheme.display1
						})
					]
				})
			}),
			floatingActionButton: new FloatingActionButton({
				key: new Key("increment"),
				child: new Icon(Icons.add),
				onPressed: this.incrementcounter
			})
		});
	}
}

class Counter {
	static function main() {
		Binding.runApp((rest:Rest<Dynamic>) -> {
			return new MyApp();
		});
	}
}
