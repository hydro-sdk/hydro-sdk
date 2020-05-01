package runtime.flutter.material;

import runtime.dart.core.DartObject;
import runtime.flutter.widgets.StatelessWidget;
import runtime.dart.ui.Color;
import runtime.flutter.Widget;

@:nullSafety(Strict)
private typedef CardProps = {
	var ?borderOnForeground:Null<Bool>;
	var ?color:Null<Color>;
	var child:Widget;
}

@:nullSafety(Strict)
private extern class MaterialBinding {
	@:luaDotMethod
	public function card(props:CardProps):Card;
}

@:nullSafety(Strict)
@:native("flutter")
private extern class FlutterBinding {
	public static var material:MaterialBinding;
}

class Card extends StatelessWidget implements DartObject {
	public var runtimeType = "Column";
	public var props:CardProps;

	public function new(props:CardProps) {
		super();
		this.props = props;

		if (this.props.borderOnForeground == null) {
			this.props.borderOnForeground = true;
		}
	}

	public override function build(buildContext:BuildContext) {
		return FlutterBinding.material.card(this.props);
	}
}
