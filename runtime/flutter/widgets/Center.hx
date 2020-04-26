package runtime.flutter.widgets;

import runtime.dart.core.DartObject;
import runtime.flutter.Widget;
import runtime.flutter.foundation.Key;

@:nullSafety(Strict)
private typedef CenterProps = {
	var child:Widget;
	var ?key:Key;
}

@:nullSafety(Strict)
private extern class WidgetsBinding {
	@:luaDotMethod
	public function center(props:CenterProps):Center;
}

@:nullSafety(Strict)
@:native("flutter")
private extern class FlutterBinding {
	public static var widgets:WidgetsBinding;
}

@:nullSafety(Strict)
class Center extends StatelessWidget implements DartObject {
	public var runtimeType = "Center";
	public var props:CenterProps;

	public function new(props:CenterProps) {
		super();
		this.props = props;
	}

	public override function build() {
		return FlutterBinding.widgets.center(this.props);
	}
}
