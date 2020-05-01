package runtime.flutter.widgets;

import runtime.dart.core.DartObject;
import runtime.flutter.rendering.CrossAxisAlignment;
import runtime.flutter.rendering.MainAxisSize;
import runtime.flutter.widgets.MainAxisAlignment;
import runtime.flutter.Widget;

@:nullSafety(Strict)
private typedef ColumnProps = {
	var ?mainAxisAlignment:Null<MainAxisAlignment>;
	var ?mainAxisSize:Null<MainAxisSize>;
	var ?crossAxisAlignment:Null<CrossAxisAlignment>;
	var children:Array<Widget>;
}

@:nullSafety(Strict)
private extern class WidgetsBinding {
	@:luaDotMethod
	public function column(props:ColumnProps):Column;
}

@:nullSafety(Strict)
@:native("flutter")
private extern class FlutterBinding {
	public static var widgets:WidgetsBinding;
}

@:nullSafety(Strict)
class Column extends StatelessWidget implements DartObject {
	public var runtimeType = "Column";
	public var props:ColumnProps;

	public function new(props:ColumnProps) {
		super();
		this.props = props;

		if (this.props.mainAxisAlignment == null) {
			this.props.mainAxisAlignment = MainAxisAlignment.start;
		}

		if (this.props.mainAxisSize == null) {
			this.props.mainAxisSize = MainAxisSize.max;
		}

		if (this.props.crossAxisAlignment == null) {
			this.props.crossAxisAlignment = CrossAxisAlignment.center;
		}
	}

	public override function build(buildContext:BuildContext) {
		return FlutterBinding.widgets.column(this.props);
	}
}
