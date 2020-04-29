package runtime.flutter.material;

import runtime.dart.core.DartObject;
import runtime.flutter.widgets.StatelessWidget;
import runtime.flutter.Widget;
import runtime.flutter.foundation.Key;

@:nullSafety(Strict)
private typedef FloatingActionButtonProps = {
	var ?key:Null<Key>;
	var child:Widget;
	var onPressed:() -> Void;
}

@:nullSafety(Strict)
private extern class MaterialBinding {
	@:luaDotMethod
	public function floatingActionButton(props:FloatingActionButtonProps):FloatingActionButton;
}

@:nullSafety(Strict)
@:native("flutter")
private extern class FlutterBinding {
	public static var material:MaterialBinding;
}

class FloatingActionButton extends StatelessWidget implements DartObject {
	public var runtimeType = "FloatingActionButton";
	public var props:FloatingActionButtonProps;

	public function new(props:FloatingActionButtonProps) {
		super();
		this.props = props;
	}

	public override function build() {
		return FlutterBinding.material.floatingActionButton(this.props);
	}
}
