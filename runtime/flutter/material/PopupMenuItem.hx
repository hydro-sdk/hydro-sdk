package runtime.flutter.material;

import runtime.dart.core.DartObject;
import runtime.flutter.widgets.StatelessWidget;

private typedef PopupMenuItemProps<T> = {
	var value:T;
	var child:Widget;
}

@:nullSafety(Strict)
private extern class MaterialBinding {
	@:luaDotMethod
	public function popupMenuItem(props:PopupMenuItemProps<Dynamic>):PopupMenuItem<Dynamic>;
}

@:nullSafety(Strict)
@:native("flutter")
private extern class FlutterBinding {
	public static var material:MaterialBinding;
}

class PopupMenuItem<T> extends StatelessWidget implements DartObject {
	public var runtimeType = "PopupMenuItem";
	public var props:PopupMenuItemProps<T>;

	public function new(props:PopupMenuItemProps<T>) {
		super();
		this.props = props;
	}

	public override function build(buildContext:BuildContext) {
		return FlutterBinding.material.popupMenuItem(this.props);
	}
}
