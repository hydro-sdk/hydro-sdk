package runtime.flutter.widgets;

import runtime.dart.core.DartObject;
import runtime.flutter.Widget;
import runtime.flutter.foundation.Key;

@:nullSafety(Strict)
private typedef SizedBoxProps = {
	var ?key:Key;
	var ?width:Int;
	var ?height:Int;
	var ?child:Widget;
}

@:nullSafety(Strict)
private extern class WidgetsBinding {
	@:luaDotMethod
	public function sizedBox(props:SizedBoxProps):SizedBox;
}

@:nullSafety(Strict)
@:native("flutter")
private extern class FlutterBinding {
	public static var widgets:WidgetsBinding;
}

@:nullSafety(Strict)
class SizedBox extends StatelessWidget implements DartObject {
	public var runtimeType = "SizedBox";
	public var props:SizedBoxProps;

	public function new(props:SizedBoxProps) {
		super();
		this.props = props;
	}

	public override function build() {
		return FlutterBinding.widgets.sizedBox(this.props);
	}
}
