package examples.hostArgs;

import runtime.flutter.*;
import runtime.flutter.widgets.*;
import runtime.flutter.material.*;

class HostArgs {
	static function main() {
		Binding.runApp((title:String, body:Widget) -> {
			return new MaterialApp({
				title: title,
				home: new Scaffold({
					appBar: new AppBar({
						title: new Text(title),
					}),
					body: body
				})
			});
		});
	}
}
