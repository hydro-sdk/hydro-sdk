package runtime.flutter.widgets;

import runtime.dart.core.DartObject;
import runtime.dart.ui.Size;
import runtime.flutter.Widget;

private typedef PreferredSizeProps = {
	var child:Widget;
	var preferredSize:Size;
}

@:nullSafety(Strict)
private extern class WidgetsBinding {
	@:luaDotMethod
	public function preferredSize(props:PreferredSizeProps):PreferredSize;
}

@:nullSafety(Strict)
@:native("flutter")
private extern class FlutterBinding {
	public static var widgets:WidgetsBinding;
}

class PreferredSize extends StatelessWidget implements DartObject {
	public var runtimeType = "PreferredSize";
	public var props:PreferredSizeProps;

	public override function build():PreferredSize {
		return FlutterBinding.widgets.preferredSize(this.props);
	}
}
