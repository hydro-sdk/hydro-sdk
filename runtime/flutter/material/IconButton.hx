package runtime.flutter.material;

import runtime.dart.core.DartObject;
import runtime.flutter.widgets.StatelessWidget;
import runtime.flutter.Widget;

private typedef IconButtonProps = {
	var icon:Widget;
	var ?tooltip:Null<String>;
	var onPressed:() -> Void;
}

@:nullSafety(Strict)
private extern class MaterialBinding {
	@:luaDotMethod
	public function iconButton(props:IconButtonProps):IconButton;
}

@:nullSafety(Strict)
@:native("flutter")
private extern class FlutterBinding {
	public static var material:MaterialBinding;
}

class IconButton extends StatelessWidget implements DartObject {
	public var runtimeType = "IconButton";
	public var props:IconButtonProps;

	public function new(props:IconButtonProps) {
		super();
		this.props = props;
	}

	public override function build(buildContext:BuildContext) {
		return FlutterBinding.material.iconButton(this.props);
	}
}
