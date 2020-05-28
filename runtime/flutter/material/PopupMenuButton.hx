package runtime.flutter.material;

import runtime.dart.core.DartObject;
import runtime.flutter.BuildContext;
import runtime.flutter.widgets.StatelessWidget;

private typedef PopupMenuButtonProps<T> = {
	var onSelected:(T) -> Void;
	var itemBuilder:(BuildContext) -> Array<PopupMenuItem<T>>;
}

@:nullSafety(Strict)
private extern class MaterialBinding {
	@:luaDotMethod
	public function popupMenuButton(props:PopupMenuButtonProps<Dynamic>):PopupMenuButton<Dynamic>;
}

@:nullSafety(Strict)
@:native("flutter")
private extern class FlutterBinding {
	public static var material:MaterialBinding;
}

class PopupMenuButton<T> extends StatelessWidget implements DartObject {
	public var runtimeType = "PopupMenuButton";
	public var props:PopupMenuButtonProps<T>;

	public function new(props:PopupMenuButtonProps<T>) {
		super();
		this.props = props;
	}

	public override function build(buildContext:BuildContext) {
		return FlutterBinding.material.popupMenuButton(this.props);
	}
}
