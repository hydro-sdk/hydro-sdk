package runtime.dart.ui;

import runtime.dart.core.DartObject;
import runtime.SyntheticBox.JITAllocatingRTManagedBox;

@:nullSafety(Strict)
private extern class UiBinding {
	@:luaDotMethod
	public function color(hex:Int):Color;
}

@:nullSafety(Strict)
@:native("dart")
private extern class DartBinding {
	public static var ui:UiBinding;
}

class Color implements JITAllocatingRTManagedBox<{}, Color> implements DartObject {
	public var runtimeType = "Color";
	public var props = {};

	private var vmObject:Dynamic;
	private var hex:Int;

	public function new(hex:Int) {
		this.hex = hex;
	}

	public function unwrap():Color {
		return DartBinding.ui.color(this.hex);
	}
}
