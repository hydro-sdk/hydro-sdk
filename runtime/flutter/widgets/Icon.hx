package runtime.flutter.widgets;

import runtime.dart.core.DartObject;
import runtime.dart.ui.Color;

private typedef IconProps = {
	var ?size:Null<Float>;
	var ?color:Null<Color>;
}

@:nullSafety(Strict)
private extern class WidgetsBinding {
	@:luaDotMethod
	public function icon(icon:IconData, ?props:Null<IconProps>):Icon;
}

@:nullSafety(Strict)
@:native("flutter")
private extern class FlutterBinding {
	public static var widgets:WidgetsBinding;
}

class Icon extends StatelessWidget implements DartObject {
	public var runtimeType = "Icon";
	public var icon:IconData;
	public var props:Null<IconProps>;

	public function new(icon:IconData, ?props:Null<IconProps>) {
		super();
		this.icon = icon;
		this.props = props;
	}

	public override function build(buildContext:BuildContext) {
		return FlutterBinding.widgets.icon(this.icon, this.props);
	}
}
