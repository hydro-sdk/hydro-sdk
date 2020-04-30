package test.widget;

import runtime.flutter.widgets.Binding;
import runtime.flutter.widgets.Center;
import runtime.flutter.widgets.SizedBox;
import runtime.flutter.foundation.Key;

class CenterOne {
	static function main() {
		Binding.runApp((rest:Array<Dynamic>) -> {
			return new Center({
				key: new Key("non-null child"),
				child: new SizedBox({})
			});
		});
	}
}
