package runtime.flutter.foundation;

import runtime.SyntheticBox.JITAllocatingRTManagedBox;

@:nullSafety(Strict)
private extern class FoundationBinding {
	@:luaDotMethod
	public function key(value:String):Key;
}

@:nullSafety(Strict)
@:native("flutter")
private extern class FlutterBinding {
	public static var foundation:FoundationBinding;
}

class Key implements JITAllocatingRTManagedBox<{}, {}> {
	public var value:String;
	public var props:{};

	private var vmObject:Dynamic;

	public function new(value:String) {
		this.value = value;
	}

	public function unwrap():Key {
		return FlutterBinding.foundation.key(this.value);
	}
}
