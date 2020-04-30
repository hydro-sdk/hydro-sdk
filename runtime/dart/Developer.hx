package runtime.dart;

@:nullSafety(Strict)
private extern class DeveloperBinding {
	@:luaDotMethod
	public function debugger(arg:Dynamic):Void;
}

@:nullSafety(Strict)
@:native("dart")
private extern class DartBinding {
	public static var developer:DeveloperBinding;
}

class Developer {
	public static function debugger(args:Dynamic):Void {
		DartBinding.developer.debugger(args);
	}
}
