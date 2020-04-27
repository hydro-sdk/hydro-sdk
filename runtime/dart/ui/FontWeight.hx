package runtime.dart.ui;

import runtime.dart.core.DartObject;
import runtime.SyntheticBox.JITAllocatingRTManagedBox;

@:nullSafety(Strict)
private extern class UiBinding {
	@:luaDotMethod
	public function fontWeight(index:Int):FontWeight;
}

@:nullSafety(Strict)
@:native("dart")
private extern class DartBinding {
	public static var ui:UiBinding;
}

class FontWeight implements JITAllocatingRTManagedBox<{}, FontWeight> implements DartObject {
	public var runtimeType = "FontWeight";
	public var props = {};

	private var vmObject:Dynamic;

	private var index:Int;

	public function new(index:Int) {
		this.index = index;
	}

	public static var w100 = new FontWeight(0);
	public static var w200 = new FontWeight(1);
	public static var w300 = new FontWeight(2);
	public static var w400 = new FontWeight(3);
	public static var w500 = new FontWeight(4);
	public static var w600 = new FontWeight(5);
	public static var w700 = new FontWeight(6);
	public static var w800 = new FontWeight(7);
	public static var w900 = new FontWeight(8);
	public static var normal = FontWeight.w400;
	public static var bold = FontWeight.w700;

	public static var values:Array<FontWeight> = [
		FontWeight.w100,
		FontWeight.w200,
		FontWeight.w300,
		FontWeight.w400,
		FontWeight.w500,
		FontWeight.w600,
		FontWeight.w700,
		FontWeight.w800,
		FontWeight.w900,
	];

	public function unwrap() {
		return DartBinding.ui.fontWeight(this.index);
	}
}
