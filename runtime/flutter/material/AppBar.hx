package runtime.flutter.material;

import runtime.dart.core.DartObject;
import runtime.SyntheticBox.JITAllocatingRTManagedBox;
import runtime.flutter.widgets.PreferredSize;
import runtime.flutter.Widget;

private typedef AppBarProps = {
	var title:Widget;
	var ?actions:Null<Array<Widget>>;
	var ?leading:Null<Widget>;
	var ?bottom:Null<PreferredSize>;
}

@:nullSafety(Strict)
private extern class MaterialBinding {
	@:luaDotMethod
	public function appBar(props:AppBarProps):AppBar;
}

@:nullSafety(Strict)
@:native("flutter")
private extern class FlutterBinding {
	public static var material:MaterialBinding;
}

class AppBar implements JITAllocatingRTManagedBox<AppBarProps, AppBar> implements DartObject {
	public var runtimeType = "AppBar";
	public var props:AppBarProps;

	private var vmObject:Dynamic;

	public function new(props:AppBarProps) {
		this.props = props;
	}

	public function unwrap() {
		return FlutterBinding.material.appBar(this.props);
	}
}
