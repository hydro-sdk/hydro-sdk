package runtime.flutter.widgets;

import runtime.dart.core.DartObject;
import runtime.flutter.foundation.Key;
import runtime.flutter.painting.TextStyle;

@:nullSafety(Strict)
private typedef TextProps = {
	var ?key:Null<Key>;
	var ?style:Null<TextStyle>;
}

@:nullSafety(Strict)
private extern class WidgetsBinding {
	@:luaDotMethod
	public function text(text:String, props:Null<TextProps>):Text;
}

@:nullSafety(Strict)
@:native("flutter")
private extern class FlutterBinding {
	public static var widgets:WidgetsBinding;
}

@:nullSafety(Strict)
class Text extends StatelessWidget implements DartObject {
	public var runtimeType = "Text";
	public var text:String;
	public var props:Null<TextProps>;

	public function new(text:String, ?props:Null<TextProps>) {
		super();
		this.text = text;
		this.props = props;
	}

	public override function build() {
		return FlutterBinding.widgets.text(this.text, this.props);
	}
}
