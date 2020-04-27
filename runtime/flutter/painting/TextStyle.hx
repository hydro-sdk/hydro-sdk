package runtime.flutter.painting;

import runtime.dart.ui.Color;
import runtime.dart.ui.FontWeight;
import runtime.dart.core.DartObject;
import runtime.SyntheticBox.JITAllocatingRTManagedBox;

private typedef TextStyleProps = {
	var ?fontSize:Null<Int>;
	var ?color:Null<Color>;
	var ?fontWeight:Null<FontWeight>;
}

@:nullSafety(Strict)
private extern class PaintingBinding {
	@:luaDotMethod
	public function textStyle(props:TextStyleProps):TextStyle;
}

@:nullSafety(Strict)
@:native("flutter")
private extern class FlutterBinding {
	public static var painting:PaintingBinding;
}

class TextStyle implements JITAllocatingRTManagedBox<TextStyleProps, TextStyle> implements DartObject {
	public var runtimeType = "TextStyle";
	public var props:TextStyleProps;

	private var vmObject:Dynamic;

	public function new(props:TextStyleProps) {
		this.props = props;
	}

	public extern function copyWith(props:{color:Color}):TextStyle;

	public extern function apply(props:{
		var ?color:Null<Color>;
		var ?fontWeightDelta:Null<Int>;
	}):TextStyle;

	public function unwrap() {
		return FlutterBinding.painting.textStyle(this.props);
	}
}
