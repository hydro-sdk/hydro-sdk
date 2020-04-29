package runtime.flutter.widgets;

import runtime.dart.core.DartObject;
import runtime.SyntheticBox.JITAllocatingRTManagedBox;

@:nullSafety(Strict)
private typedef IconDataProps = {
	var fontFamily:String;
	var ?matchTextDirection:Null<Bool>;
}

@:nullSafety(Strict)
private extern class WidgetsBinding {
	@:luaDotMethod
	public function iconData(codePoint:Int, props:IconDataProps):IconData;
}

@:nullSafety(Strict)
@:native("flutter")
private extern class FlutterBinding {
	public static var widgets:WidgetsBinding;
}

@:nullSafety(Strict)
class IconData implements JITAllocatingRTManagedBox<IconDataProps, IconData> implements DartObject {
	public var runtimeType = "IconData";
	public var codePoint:Int;
	public var props:IconDataProps;

	private var vmObject:Dynamic;

	public function new(codePoint:Int, props:IconDataProps) {
		this.codePoint = codePoint;
		this.props = props;
	}

	public function unwrap() {
		return FlutterBinding.widgets.iconData(this.codePoint, this.props);
	}
}
