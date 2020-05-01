package runtime.flutter.material;

import runtime.dart.core.DartObject;
import runtime.dart.ui.Color;
import runtime.flutter.Widget;
import runtime.flutter.material.AppBar;
import runtime.flutter.widgets.StatelessWidget;

private typedef ScaffoldProps = {
	var ?appBar:Null<AppBar>;
	var ?body:Null<Widget>;
	var ?floatingActionButton:Null<Widget>;
	var ?backgroundColor:Null<Color>;
}

@:nullSafety(Strict)
private extern class MaterialBinding {
	@:luaDotMethod
	public function scaffold(props:ScaffoldProps):Scaffold;
}

@:nullSafety(Strict)
@:native("flutter")
private extern class FlutterBinding {
	public static var material:MaterialBinding;
}

class Scaffold extends StatelessWidget implements DartObject {
	public var runtimeType = "Scaffold";
	public var props:ScaffoldProps;

	public function new(props:ScaffoldProps) {
		super();
		this.props = props;
	}

	public override function build(buildContext:BuildContext) {
		return FlutterBinding.material.scaffold(this.props);
	}
}
