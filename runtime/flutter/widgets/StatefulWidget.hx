package runtime.flutter.widgets;

import runtime.flutter.Widget;
import runtime.flutter.widgets.State;

@:generic
class StatefulWidget extends Widget {
	public function new() {
		super();
	}

	@:keep
	public function createState(): State<Dynamic> {
		return new State();
	}
}
