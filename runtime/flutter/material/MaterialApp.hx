package runtime.flutter.material;

import runtime.dart.core.DartObject;
import runtime.flutter.widgets.StatelessWidget;
import runtime.flutter.BuildContext;
import runtime.flutter.Widget;

@:nullSafety(Strict)
private typedef MaterialAppProps = {
	var ?initialRoute:Null<String>;
	var home:Widget;
	var ?title:Null<String>;
	var ?route:Null<Map<String, (context:BuildContext) -> Widget>>;
}

@:nullSafety(Strict)
private extern class MaterialBinding {
	@:luaDotMethod
	public function materialApp(props:MaterialAppProps):MaterialApp;
}

@:nullSafety(Strict)
@:native("flutter")
private extern class FlutterBinding {
	public static var material:MaterialBinding;
}

@:nullSafety(Strict)
class MaterialApp extends StatelessWidget implements DartObject {
	public var runtimeType = "MaterialApp";
	public var props:MaterialAppProps;

	public function new(props:MaterialAppProps) {
		super();
		this.props = props;
		this.props.title = this.props.title != null ? this.props.title : "";
	}

	public override function build(buildContext:BuildContext) {
		return FlutterBinding.material.materialApp(this.props);
	}
}
