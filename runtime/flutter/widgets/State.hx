package runtime.flutter.widgets;

import runtime.flutter.widgets.StatefulWidget;

class State<T:StatefulWidget> {
	public var setState:(pred:() -> Void)->Void;

	public function new() {}

	public function build(context:BuildContext):Widget {
		return new Widget();
	}
}
