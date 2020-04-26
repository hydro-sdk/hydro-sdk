package test.widget;

import haxe.extern.Rest;
import runtime.flutter.widgets.Binding;
import runtime.flutter.widgets.Column;
import runtime.flutter.widgets.SizedBox;
import runtime.flutter.foundation.Key;

class SizedBoxOne {
	static function main() {
		Binding.runApp((rest:Rest<Dynamic>) -> {
			return new Column({
				children: [
					new SizedBox({key: new Key("empty")}),
					new SizedBox({key: new Key("only width"), width: 10}),
					new SizedBox({key: new Key("only height"), height: 10})
				]
			});
		});
	}
}
