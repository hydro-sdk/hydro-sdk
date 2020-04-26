package runtime.dart.ui;

import runtime.dart.core.DartObject;
import runtime.dart.core.Double;
import runtime.SyntheticBox.JITAllocatingRTManagedBox;

@:nullSafety(Strict)
private extern class UiBinding {
	@:luaDotMethod
	public function size(width:Float, height:Float):Size;
}

@:nullSafety(Strict)
@:native("dart")
private extern class DartBinding {
	public static var ui:UiBinding;
}

class Size implements JITAllocatingRTManagedBox<{}, Size> implements DartObject {
	public var runtimeType = "Size";
	public var width:Float;
	public var height:Float;
	public var props = {};

	private var vmObject:Dynamic;

	public function new(width:Float, height:Float) {
		this.width = width;
		this.height = height;
	}

	public static function fromHeight(height:Float):Size {
		return new Size(Double.infinity, height);
	}

	public function unwrap() {
		return DartBinding.ui.size(this.width, this.height);
	}
}
